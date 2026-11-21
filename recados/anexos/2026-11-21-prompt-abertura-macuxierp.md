# Prompt de abertura do projeto Macuxi ERP (repositório aloirr/macuxierp)

Cole este texto na primeira sessão do claude.ai/code aberta com o repositório `aloirr/macuxierp`, que deve estar vazio. Para leitura e cópia, anexe também o repositório `aloirr/macuxifdv`: ele é o modelo e não pode ser alterado.

---

## 0. Quem pede e o que é
Pedido do Alexandre, dono do produto.

Monte do zero o projeto **Macuxi ERP**, um ERP 100% na nuvem com estas características:
- É multiempresa (SaaS) e guarda os dados de cada empresa cliente.
- Integra-se direto com o Macuxi FDV, a força de vendas.
- Roda em **https://erp.macuxifdv.com.br**, com a mesma VM, o mesmo servidor de banco e as mesmas conexões de produção do Macuxi FDV.

Siga os mesmos moldes do `aloirr/macuxifdv`: recados, agentes, regras, guardião, CI, PR, deploy com aprovação, ADRs e quadro. Leia primeiro estes arquivos do FDV:
- `CLAUDE.md`;
- `docs/produto/07-agentes-e-coordenacao.md`;
- `docs/produto/04-arquitetura-e-dados.md`;
- `docs/produto/06-integracao-erp.md`;
- `.claude/` (agentes, hooks do guardião e skills);
- `.coord/` (donos, quadro e modelos);
- `scripts/coord*.mjs`;
- `.github/workflows/` (ci e producao-*).

**Copie a regra, não o conteúdo:** onde o FDV fala de vendedor, promotor ou app Android, o ERP fala de cadastro, pedido, faturamento e fiscal.

Responda sempre em português do Brasil. Horários para pessoas em Manaus (UTC−4); banco e carimbos técnicos em UTC.

## 1. Escopo da primeira versão (só o básico para o FDV ser usado de fato)
1. **Cadastros**
   - **Clientes:** CNPJ/CPF, IE, endereço com código IBGE, limite de crédito, condição de pagamento e tabela de preço.
   - **Produtos:** código, descrição, NCM, CEST, unidade, EAN, marca, preço por tabela, estoque simples e dados fiscais.
   - **Equipe:** usuários do ERP e vendedores do FDV, com carteira de clientes e filial.
   - **Filiais e empresa:** CNPJ, IE, regime tributário e certificado A1.
2. **Pedidos**
   - Recebe os pedidos do FDV.
   - Permite lançar pedido manual.
   - Faz a aprovação e devolve o status ao FDV.
3. **Faturamento**
   - Transforma o pedido aprovado em **NF-e modelo 55**: emissão, DANFE em PDF, cancelamento, carta de correção, inutilização, contingência e consulta.
   - Guarda o XML autorizado.
   - Gera os títulos a receber de forma simples (parcelas da condição de pagamento).
4. **Fiscal (apoio ao faturamento)**
   - Regras por NCM, CFOP e CST/CSOSN, com ICMS, ICMS-ST, IPI, PIS e COFINS.
   - Grupos **IBS, CBS e IS da Reforma Tributária** (NT 2025.002-RTC, na versão vigente).
5. **Integração FDV**
   - O ERP é a **fonte da verdade** dos cadastros e do faturamento.
   - Ele publica no Hub `/integracao/v1` do FDV, no contrato canônico do doc 06 do FDV: filiais, clientes, produtos, preços, estoque, vendedores, carteira, títulos e status de pedido e nota.
   - Ele recebe os pedidos do FDV.
   - O ERP faz o papel do Conector, **sem Conector on-premise**: é um conector nativo na nuvem, com idempotência por `external_id`.

Fica **fora** da v1: compras, contas a pagar completo, contabilidade, SPED, NFC-e, NFS-e, produção e app mobile. Cada um entra só com o "backlog" escrito do Alexandre.

## 2. Ferramentas gratuitas (gastar o mínimo)
Antes de adotar cada uma, a sessão confere a versão, a licença, a data do último commit e a compatibilidade com o layout NF-e 4.00 e a NT 2025.002 vigente. O resultado vai para a ADR 0002.

| Necessidade | Ferramenta gratuita | Observação |
|---|---|---|
| Autorizar NF-e | Webservices da SEFAZ (autorização, retorno, evento, inutilização, consulta) | Homologação e produção gratuitas; credenciamento do emissor na SEFAZ do estado (AM: SEFAZ-AM) |
| Layout e regras | Portal Nacional da NF-e: schemas XSD, Manual do Contribuinte, Notas Técnicas, NT 2025.002-RTC (IBS/CBS/IS) e as tabelas de classificação tributária | A NT muda com frequência: a versão usada fica registrada em ADR |
| Biblioteca NF-e em TypeScript | Avaliar **Treeunfe DFe** (GPL-3.0) e **NFeWizard**. Referência funcional madura: **sped-nfe** (PHP, nfephp-org) | Conferir a licença para SaaS. Se nenhuma servir, módulo próprio: assinatura XML, SOAP e mTLS com o A1 |
| CNPJ | **Dados abertos do CNPJ da Receita Federal** (base completa, CSV, atualização periódica) e **BrasilAPI** para consulta pontual | Não há API REST oficial gratuita da Receita para consulta unitária |
| Situação da IE | Webservice **Consulta Cadastro** da SEFAZ, com o certificado A1 | Gratuito |
| CEP | **ViaCEP** e **BrasilAPI** | Gratuitos e sem chave |
| Municípios | **API de localidades do IBGE** | Código IBGE obrigatório na NF-e |
| NCM | Tabela NCM do **Portal Único Siscomex** (download) | Atualizar por rotina |
| CEST, CFOP, CST | Tabelas oficiais (Convênio ICMS do CEST e anexos do Manual da NF-e) | Carga por migração ou seed |
| Carga tributária aproximada | Tabela **IBPT** ("De Olho no Imposto") | Gratuita com cadastro |
| Notas recebidas (fase 2) | **Distribuição DF-e** do Ambiente Nacional | Gratuita |
| DANFE em PDF | Biblioteca de PDF que o FDV já usa | Sem serviço pago |

**Custo que não tem como evitar:** o **certificado digital A1** de cada empresa emissora, por empresa e por ano. Ele é do cliente. Para homologação, serve o A1 da própria empresa em ambiente de teste.

**Decisão já tomada pelo Alexandre (20/11/2026, recado R-20261120-205653-alexandre no macuxifdv-recados): o ERP é construído no mesmo stack do FDV** (TypeScript, Fastify, Next.js, PostgreSQL, a mesma VM e o mesmo fluxo de deploy). Não se adota Odoo, com a localização da OCA, nem ERPNext. Os motivos são o mesmo time de agentes, as mesmas regras, a integração nativa com o FDV e nenhuma pilha nova para manter. A ADR 0001 só registra a decisão e a comparação; ela não reabre a escolha.

## 3. Arquitetura (espelho do FDV)
```
apps/web (BKO do ERP, Next.js) · apps/api (Fastify, monólito modular) · apps/worker (filas: SEFAZ, integração FDV)
modules/<core|cadastros|pedido|faturamento|fiscal|integracao-fdv>/{manifest.ts,domain,contracts,api,web,db}
packages/{platform-sdk,ui,config} · db/ (migrações, RLS, seeds, tabelas fiscais) · tests/ · .coord/ · .claude/
docs/produto/01..07 · docs/decisoes/ (ADR) · docs/status/
```
- **Banco:** o mesmo servidor PostgreSQL do FDV, com um **banco próprio `macuxierp`** e papéis próprios (`macuxierp_app`, `macuxierp_leitura`), um schema por módulo e RLS por `tenant_id`. O ERP nunca lê tabela do FDV: fala com o FDV só pela API do Hub.
- **VM:** a mesma VM do FDV, com um serviço próprio atrás do mesmo proxy, no host `erp.macuxifdv.com.br`. O deploy do ERP usa o **mesmo grupo de concorrência** do FDV (`producao-vm`), para os dois nunca publicarem ao mesmo tempo.
- **Arquivos:** o mesmo armazenamento S3 do FDV, com um prefixo próprio (`macuxierp/<tenant>/...`). O XML autorizado é **imutável** e fica guardado no mínimo 5 anos, com o backup e o ensaio de restauração do FDV.
- **Segredos:** nada de segredo em código, recado ou log.
  - O certificado A1 e a senha dele ficam **criptografados no banco**, com a chave no secret do servidor.
  - O secret do GitHub e o `.env` de produção só o Alexandre cria.

## 4. Regras inegociáveis (as do FDV mais as fiscais)
1. **Fronteiras:** módulo importa só `packages/*` e `modules/*/contracts`. Nunca lê tabela de outro schema.
2. Regra de negócio no `domain`, como função pura, com teste antes e citando `RN-...`. A API sempre revalida.
3. Tipos só de `contracts` (Zod). Eventos `<modulo>.<entidade>.<fato>@vN`.
4. Dinheiro em centavos, com o arredondamento do Manual da NF-e. Datas em UTC, mostradas no fuso do tenant. UUID. Escrita idempotente.
5. Toda tabela tem `id`, `tenant_id`, `created_at`, `updated_at`, `deleted_at` e `external_id`, e RLS ligado.
6. Toda rota checa o perfil, o tenant e a licença do módulo.
7. **Fiscal:**
   - numeração da NF-e sequencial por série, sem buraco (buraco só por inutilização);
   - nota autorizada nunca é editada (só evento);
   - homologação e produção separadas por tenant, e a troca para produção só com o "aprovo produção fiscal <empresa>" do Alexandre;
   - o XML autorizado é guardado antes de qualquer outra coisa.
8. **LGPD:** a Macuxi ERP é operadora dos dados do cliente.
   - Sem dado pessoal em log.
   - O cliente exporta os próprios dados a qualquer hora.
   - A exclusão segue o prazo fiscal de guarda.
9. Commit, push e PR só pelo fluxo de PR: um PR por dono e por lote.

## 5. Time de agentes (`.claude/agents/`)
Copie e adapte os do FDV.
- `gerente-projetos`;
- `engenheiro-software`: plataforma, API, SDK, contratos, CI, ADRs e revisão final;
- `engenheiro-apps`: só o shell web do BKO, sem mobile;
- `designer-ux`;
- `design-de-marca`: a mesma marca Macuxi do FDV, e o manual da marca do FDV é a fonte;
- `banco-dados`;
- `testes`;
- `corretor-redundancias`;
- `modulo-core`;
- `modulo-cadastros`;
- `modulo-pedido`;
- `modulo-faturamento`;
- `modulo-fiscal`;
- `modulo-integracao-fdv`.

Os donos dos caminhos ficam em `.coord/donos.json`.

As sessões fixas são duas: **"MacuxiERP - Gerente Projeto"** e **"MacuxiERP - Agente PO"**. O PO usa a skill genérica `agente-po`.

## 6. Recados, guardião, CI e deploy (iguais ao FDV)
- **Recados** no repositório `aloirr/macuxierp-recados`, com o mesmo formato:
  - id `R-AAAAMMDD-HHMMSS-<autor>`;
  - cabeçalho YAML;
  - caixas por agente;
  - `lidos/`;
  - `anexos/`;
  - `scripts/coord.mjs` (caixa, enviar, pendencias, dono, verificar), gravando pela API do GitHub ou por git.

  O chat do Alexandre vira recado `aviso` para `todos`, com o texto literal.
- **Guardião:** copie os hooks de `.claude/hooks/` do FDV (guarda-donos, guarda-bash, guarda-mcp e guarda-merge), com os testes, e adapte só os caminhos. Nunca use `MACUXI_GUARDA=off`.
- **Governança:** `.claude/**`, `.coord/donos.json`, `scripts/coord*.mjs` e `.github/**`. É PR próprio com `Agente: alexandre`, e o merge só sai com "autorizo o merge do PR #N no commit <sha>".
- **CI:** o mesmo desenho do FDV.
  - O CI do PR roda escopo, governança, lint, fronteiras, typecheck (com `--concurrency=2`) e build.
  - A suíte completa roda uma vez por versão, no `producao-liberar`.
- **Deploy:** `producao-liberar` → issue → comentário "aprovado vX.Y.Z" → `producao-aprovar` → `producao-publicar`. O deploy só sai com o "aprovo deploy vX.Y.Z" do Alexandre.
- **Sem Docker** nos agentes. Postgres local na sessão por script (`db/scripts/pg-local.sh`, copiado do FDV).
- **Proibido:** force push, push direto ao `main`, merge com CI vermelho e apagar histórico.

## 7. Regras de entrega e previsão (lições do FDV, valem desde o dia 1)
1. Nenhum PR sem testes verdes na sessão: unitários, banco e `tests/`, mais lint e typecheck, com o resumo no corpo do PR.
2. A suíte completa roda na sessão, no SHA final, antes do liberar.
3. O corretor revisa numa rodada só, antes do push. Um commit e um push por PR.
4. Job acima de 2× o tempo normal é cancelado e usa o rerun único, só para falha de infraestrutura.
5. A previsão é montada etapa por etapa, com o tempo do **dono** mais 15%, e muda só por motivo novo, escrito.
6. Decisão nova com a versão em fechamento vai ao Alexandre, com o impacto em minutos e as opções "entra nesta" ou "vai para a seguinte".
7. **Prompt de sessão filha:**
   - começa pela tarefa concreta de código, com caminhos de arquivo;
   - diz "mande a previsão e comece já; vá até o PR sem parar";
   - nunca diz "antes de começar, responda" nem "você é o gerente";
   - leva as decisões do Alexandre no texto.

   Sessão interrompida que recebe "retome" de outra sessão pode recusar. Nesse caso, abra uma sessão nova.
8. Toda sessão nova abre no ambiente da nuvem do projeto, com o graphify no setup script, e indexa só o código, sem LLM.

## 8. Fases e critérios de pronto
| Fase | Entrega | Pronto quando |
|---|---|---|
| F0 Fundação | Repositórios, governança, guardião, recados, CI, ADR 0001 (stack do FDV, decidido) e ADR 0002 (biblioteca NF-e), docs 01 a 07 | `coord.mjs verificar` limpo e CI verde num PR vazio |
| F1 Cadastros | Empresa, filial, cliente, produto, equipe e tabelas fiscais (NCM, CEST, CFOP, IBGE), com consulta de CNPJ e CEP | Testes de RN, RLS e BKO de cadastro com print revisado |
| F2 Integração FDV, ida | O ERP publica cadastros no Hub do FDV (contrato do doc 06) | Um tenant de teste do FDV recebe tudo sem erro, de forma idempotente |
| F3 Pedidos | O FDV manda o pedido, e o ERP aprova e devolve o status | Ida e volta testadas de ponta a ponta |
| F4 Faturamento em homologação | NF-e 55 em homologação na SEFAZ-AM: autorização, cancelamento, CC-e, inutilização, DANFE, IBS/CBS | 20 notas de teste autorizadas, com o XML guardado |
| F5 Produção piloto | Primeira empresa em produção fiscal | "aprovo produção fiscal <empresa>" do Alexandre |

## 9. O que o Alexandre faz (ninguém mais pode fazer)
- Criar os repositórios `aloirr/macuxierp` e `aloirr/macuxierp-recados`.
- Criar os secrets do GitHub e o `.env` de produção:
  - banco `macuxierp`;
  - chave de criptografia do A1;
  - credenciais S3 e SMTP.
- Apontar o DNS de `erp.macuxifdv.com.br` para a VM.
- Fornecer o certificado A1 da empresa piloto pelo caminho seguro que a ADR definir, nunca colado em chat ou recado.
- Credenciar a empresa piloto como emissora na SEFAZ-AM.

## 10. Primeira tarefa desta sessão
1. Crie a fase F0 inteira num PR de governança: estrutura, `CLAUDE.md`, agentes, hooks, skills, `.coord/`, `scripts/coord.mjs`, CI e docs 01 a 07.
2. Escreva a ADR 0001 (registro da decisão de construir no stack do FDV) e a ADR 0002 (biblioteca NF-e), com a pesquisa da seção 2 conferida na data de hoje.
3. Mande ao Alexandre o número e o SHA completo do PR para a frase de merge, a lista do que só ele faz (seção 9) e a previsão de F1 a F4, com o tempo de cada etapa + 15%.
4. Termine com "Decisões que você precisa tomar":
   - biblioteca NF-e (ADR 0002);
   - empresa piloto.
