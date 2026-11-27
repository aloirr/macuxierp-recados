---
id: R-20261126-223950-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps, modulo-integracao-fdv, engenheiro-software]
cc: [testes]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T22:39:50-04:00
---
# 36 A: um nome por ação na aba Integração do /config (tabela antigo → novo, RD-2315 a 2337)

Enviado pela sessão designer-ux + design-de-marca (decisão 36 A, v0.3.17). Cada dono troca só os próprios caminhos. O retorno de cada ação passa a usar o ResultadoAcao (packages/ui, PR do designer-ux em seguida). Dúvidas: responda neste fio.

# Aba Integração do /config: um nome por ação (decisão 36 A, v0.3.17)

Rodada única do `corretor-redundancias` sobre o `origin/main` @ `b4ab3818` (achados RD-2315 a RD-2337), consolidada pelo designer-ux. Regra: o nome que já é o mais usado na tela, verbo no infinitivo, curto, sem jargão (`docs/marca/botao-acoes.md`, `docs/design/entrada-cenario-b/README.md`). O retorno de cada ação vai no `ResultadoAcao` logo abaixo do botão (`docs/design/resultado-acao/README.md`). Nomes internos de código (`retomar`, `ultimo_uso_em`) não mudam por esta tabela.

Abreviações: ABA = `apps/web/src/app/config/(portal)/empresas/[id]/aba-integracao.tsx`; PAGE = `…/[id]/page.tsx`; LOG = `…/[id]/log-cadastro.tsx`; ZC = `…/[id]/zerar-cadastro.tsx`; ZP = `…/[id]/zerar-pedidos.tsx`; CFG = `apps/web/src/lib/config/integracao-fdv.ts`; TXT = `apps/web/src/lib/integracao-fdv-textos.ts`; STA = `apps/web/src/lib/integracao-fdv.ts`; OPE = `apps/web/src/lib/config/operacao-fdv.ts`; CAR = `apps/web/src/lib/config/cargas.ts`; PZ = `apps/web/src/lib/config/pedidos-zerar.ts`; MSG = `modules/integracao-fdv/domain/mensagens.ts`; CONF = `modules/integracao-fdv/domain/configuracao.ts`; PLAT = `modules/integracao-fdv/api/plataforma.ts`; SDK-I/O/C = `packages/platform-sdk/src/portal-integracao.ts` / `portal-integracao-operacao.ts` / `portal-cargas.ts`. Linhas do `origin/main` @ `b4ab3818`.

## Tabela antigo → novo

| Ação | Antigo | Novo | Onde | Dono | RD |
|---|---|---|---|---|---|
| Testar conexão | botão "Testar conexão"; retorno "Teste pedido. A resposta do FDV aparece em "Último sinal" em instantes." | botão **Testar conexão** (fica); retorno `Teste iniciado. Veja "Último sinal" no Monitor.` | ABA:72 | engenheiro-apps | 2315 |
| Retomar cadastro parado | "Tentar de novo" (tela) × "retomar" (docs); título "Tentar de novo Clientes?"; retorno "Pedido para tentar de novo registrado." / "Este cadastro não estava pausado." | **Tentar de novo**; título `Tentar de novo o envio de <Cadastro>?`; retorno `Envio liberado.` / `Este cadastro não estava parado.` | ABA:95, :206 · docs 02:64, 03:109 → "tentar de novo (retomar)" | engenheiro-apps · gerente-projetos (docs) | 2316 |
| Recarregar a página que falhou | link "Tentar de novo" + "…Tente de novo." | link **Recarregar**; texto `Não foi possível carregar a integração.` | PAGE:35, :74-75 · `aba-dados.tsx`:53 · `(portal)/page.tsx`:27 | engenheiro-apps | 2317 |
| Nova tentativa automática (texto) | "Aguarde: o envio tenta de novo sozinho." | `Aguarde: o envio se repete sozinho.` | TXT:22, :33 | engenheiro-apps | 2317 |
| Salvar ou trocar a chave do conector | "Salvar credencial" / "Trocar credencial"; "Credencial salva."; "Nenhuma credencial cadastrada…"; "O FDV recusou a credencial do conector." / "Corrija a credencial do conector."; MSG "Troque a chave na tela Integração FDV" | **Salvar chave** / **Trocar chave**; `Chave salva.`; `Nenhuma chave salva. Informe o código e a chave do conector.`; `O FDV recusou a chave do conector.` / `Use "Trocar chave".` ("Gerar chave" só no cenário B, onde o ERP gera) | ABA:63, :150, :160 · TXT:8, :35 · MSG:41 | engenheiro-apps · modulo-integracao-fdv | 2318, 2323 |
| Última comunicação | ficha "Último uso" × Monitor "Último sinal" | **Último sinal** (Monitor); a linha "Último uso" sai da ficha | ABA:147 (remover) · SDK-I:215 (campo: avaliar) · ADR 0013:60 | engenheiro-apps · engenheiro-software | 2319 |
| Atualizar o Monitor | "Monitor indisponível agora. Use Atualizar." | **Atualizar** (fica); `Monitor indisponível agora.` | ABA:139 | engenheiro-apps | 2320 |
| Ajuda que repete o rótulo ao lado | célula Falha 'Use "Tentar de novo".'; LOG "…Veja todos no BKO da empresa." | célula Falha só com o motivo; `Mais N erros não aparecem aqui.` | TXT:37 · LOG:41 | engenheiro-apps | 2320 |
| Reprocessar | "Reprocessar pedido: 2 falhas e 1 pendente." / "Nada a reprocessar neste cadastro." | **Reprocessar** (fica); `Reprocessando 2 falhas e 1 pendente.` / `Nada a reprocessar.` | OPE:68 | engenheiro-apps | 2327 |
| Ligar / Desligar | coluna "Ligada" / "Desligada" × "Cadastro ligado." | **Ligar** / **Desligar** (ficam); coluna `Ligado` / `Desligado` | STA:48 | engenheiro-apps | 2337 |
| Salvar o limite do lote | "Configuração salva."; "…de 1 a 5000." × "…de 1 a 5.000 registros" | **Salvar** (fica); `Registros por lote salvos.`; erro único `Informe um número de 1 a 5.000.` | ABA:70 · CFG:18 · CONF:9 | engenheiro-apps · modulo-integracao-fdv | 2326 |
| Zerar cadastro | "Zerar formas de pagamento zera também os prazos: os dois usam o mesmo cadastro." (e 3 iguais); "Os registros também serão inativados no Macuxi FDV."; "Dados zerados. Mantidos: N (em uso em…)" | **Zerar** / "Zerando…" (ficam); `Zera também as condições de pagamento.` (e equivalentes, sem explicação interna); `Também inativa no Macuxi FDV.`; retorno `Zerado: <Cadastro>. Mantidos: N.` | OPE:91-94 · SDK-O:231 · ZC:81 · CAR:234-236 · SDK-C:423 | engenheiro-apps · engenheiro-software | 2328, 2329, 2330 |
| Zerar pedidos | confirmar "Zerar pedidos"; "Pedidos zerados: 3. Mantidos: 2 (com nota ou título)." | botão **Zerar pedidos não faturados** (fica); confirmar **Zerar** / "Zerando…"; `Pedidos zerados: 3. Mantidos: 2.` | ZP:29-30 · PZ:42 | engenheiro-apps | 2330 |
| Bloqueio: sem licença | 5 textos (ABA:129, PLAT:247, api erros.ts:26, TXT:10, MSG:43) | `Integração FDV sem licença nesta empresa. Ligue o módulo na aba Empresa.` | ABA:129 · PLAT:247 · `apps/api/src/plataforma/erros.ts`:26 | engenheiro-apps · modulo-integracao-fdv · engenheiro-software | 2324 |
| Bloqueio: envio em andamento | "…está enviando agora. Aguarde…" × "Já há um envio desta entidade…" × "Há uma carga em andamento…" | `Este cadastro está enviando agora. Espere terminar.` | PLAT:246 · CONF:81 · CAR:202 | modulo-integracao-fdv · engenheiro-apps | 2325 |
| Motivos de pausa (BKO e /config) | dois catálogos (MSG:40-52 e TXT:7-39) com palavras diferentes; "entidade", "idempotência", "código" | catálogo único do módulo (o engenheiro-software decide onde); sem jargão: `O FDV não aceita mais esta versão do conector. Fale com a Macuxi.` · `O FDV recusou um envio repetido. Fale com a Macuxi.` · `Outro conector já envia este cadastro ao FDV. Fale com a Macuxi.` · `O FDV recusou o formato do envio. Fale com a Macuxi.` · `Erro desconhecido. Fale com a Macuxi.` | MSG:40-52 ↔ TXT:7-39 | modulo-integracao-fdv · engenheiro-apps · cc engenheiro-software | 2321, 2322 |

## Também (sem mudança de nome)

- RD-2331: uma constante só para "Antes de zerar, exporte pelo BKO da empresa." (CAR:232 × PZ:17). engenheiro-apps.
- RD-2332: na prévia do Zerar pedidos, "Pedidos faturados e notas não são apagados." só quando não há mantidos; vazio `Não há pedidos não faturados para apagar.` engenheiro-apps.
- RD-2333: no Log, sem "Os erros abertos não estão listados." quando há "Mais N…"; `textoVazio` mortos saem ou viram "Nenhum envio ainda." / "Nenhum erro aberto." engenheiro-apps.
- RD-2334: "Nenhum cadastro ligado." fica (pedido na ADR 0013:52) até o PO decidir.
- RD-2335: docs 02:64 e ADR 0013:85 seguem os nomes desta tabela (aba "Integração"; carga completa na aba Dados). gerente-projetos · engenheiro-software.
- RD-2336: README do cenário B, ficha com `Chave` e `Criada em` iguais ao bloco FDV. designer-ux (neste PR).
- Testes que citam rótulos trocados: `aba-integracao.test.tsx`:37,104,117; `tests/e2e/portal-integracao.mjs`:102,155,160,166,167; `components/integracao-fdv/vista.test.tsx`:34. testes.

Severidade alta (seguram o lote): RD-2322 (jargão no Monitor do BKO) e RD-2328 (explicação interna no Zerar).
