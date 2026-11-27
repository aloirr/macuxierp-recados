---
id: R-20261127-105908-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T10:59:08-04:00
---
# RETOMADA — estado na pausa de 27/11 10h51

# RETOMADA — estado na pausa de 27/11 10h51 (Manaus)

Regra: R-20261127-104925 (pausa aos 99% do uso semanal). Na retomada, o gerente reabre as frentes nesta ordem, em sessões Opus 5.5 com esforço médio.

## No ar
- **v0.3.22**, desde 27/11 às 10h43 (tag v0.3.22 → 7ffde45; publicar 46017773640; issue #837).

## Versão em curso: v0.3.23 (decidida pela PO às 10h47)
- **Conteúdo:**
  - a 48 A, publicação sem parada (#834, no main);
  - o hotfix /v1/entrada (#842);
  - a aba Integração nova (#840, no main);
  - o ajuste do e2e `tests/e2e/portal-integracao.mjs` (testes-3);
  - a correção da regressão de 390 em Dados (apps).
- **Falta, na ordem:**
  1. ~~#842~~ (hotfix /v1/entrada): **no main**, c6f46df;
  2. **#843** (testes-3, e2e `portal-integracao.mjs`, head c7e1445): verde na sessão, com 7 de 7 e prova do vermelho. Falta o merge com o CI verde. Se o CI pedir, juntar o main;
  3. **#844** (apps, regressão de 390 e "Registros por lote", head 4130d2b8): `--render` verde. Falta a conferência dos prints pelo designer-ux (a primeira tarefa dele na retomada) e o merge;
  4. suíte completa no SHA final (`--tudo`, render e e2e do /config e da aba Integração); o designer confere os prints no SHA final (condição da PO);
  5. liberar → "aprovado v0.3.23" da PO → publicar. É a primeira medição da 48 A: a linha MemAvailable e o laço do /login sem códigos diferentes de 200.
- **Depois do no ar:** a PO avisa a Thathyany ("corrigido", URL `https://erp.macuxifdv.com.br/v1/entrada`).

## Próxima: v0.3.24, Ficha da Receita editável (RN-CORE-16) e propagação do CNPJ
| Frente | Dono | Branch / PR | Estado | Próximo passo |
|---|---|---|---|---|
| Porta "tem NF-e que trava a troca do CNPJ" | modulo-faturamento | nuvem/v0324-faturamento-nfe-producao-v4 (sem PR; os #838 e #841 estão fechados) | 20e4d09, verde, com o `pnpm fronteiras` ok | abrir o PR do v4; lista: autorizada, autorizada_guarda_pendente, cancelada, em_autorizacao e emitida_contingencia, só produção |
| Migração 0077 (salvar a ficha, trocar o CNPJ com o evento, DV, 'manual', a reemissão única do evento e a função da NF-e com a mesma lista) | banco-dados | nuvem/v0324-banco-ficha-editavel | e58c283, sem PR; o recado de pausa não chegou, então o estado é o último conhecido | conferir os testes, terminar os testes e abrir o PR |
| Domínio, API e auditoria da ficha | modulo-core | nuvem/v0324-core-ficha-editavel (cópia só de leitura: nuvem/v0324-core-ficha-contrato-previa) | be7d52e, 271 testes verdes | db.test contra a 0077, pré-push, corretor e PR |
| Filial padrão recebe o CNPJ (consumidor de `core.empresa.cnpj_alterado@1`) | modulo-cadastros | nuvem/v0324-cadastros-filial-cnpj | 159693f, WIP, 809/809 | trocar o leitor provisório pelo Zod do core e abrir o PR |
| Tela da Ficha | engenheiro-apps | não começada (sem branch) | — | `nuvem/v0324-apps-ficha-receita` a partir do main, contra o contrato do core (ROTAS_FICHA), com ~2h00; prints para o designer |
| Ligação no apps/api (a porta do faturamento, ACOES_PLATAFORMA e o consumidor no apps/worker); "v0.3.24"→"v0.3.23" nos comentários do hotfix | engenheiro-software | — | — | depois dos PRs do faturamento, do core e do cadastros |
| Teste de ida da filial com o CNPJ novo (17 min) | modulo-integracao-fdv | — | — | depois do contrato do cadastros |
| Validação de UX e marca da Ficha | designer-ux | — | — | pelos prints do PR do apps |
| Atualizar a RN-CORE-16 no doc 03 com a lista de status final | gerente-projetos | — | — | próximo PR de docs do gerente |

## Decisões abertas
- Nenhuma do Alexandre bloqueando.
- Já decidido:
  - 51 (propagar o CNPJ): sim, pela PO;
  - razão social e IE: v0.3.25.

## Pendências do Alexandre
- A conta nova precisa do segredo de rede da Thathyany simulada, cadastrado de novo no ambiente.
- A chave do Hub, a de entrada e o .env ficam na VM.

## Também na retomada
- **testes-3:** responder se "Filiais = Carregado sem Última carga" em Dados é real ou efeito do seed (aba-dados.tsx, `ultimaEm` da filial).
- **Engenheiro:** a ligação no apps/api (a criarConsultaNfeProducao, ACOES_PLATAFORMA e o consumidor do cadastros no apps/worker), ~1h33 depois dos PRs do faturamento, do core e do cadastros. O item 6 B saiu.
- **Regra da PO:** merge fora da versão em curso só depois de fixar o SHA dela. Os PRs da v0.3.24 só entram depois do liberar da v0.3.23.

## Anotado para depois
RD-1104/2359, RD-2358, RD-2 e RD-3 do apps, RD-1111, o 🟡 do banco (superadmin_acesso_pelo_bko), o advisory lock CNPJ × emissão e o branch abandonado nuvem/v0324-faturamento-nfe-producao.

## Uso na pausa
O uso semanal estava em 93% às 10h49 (renova em 03/12 às 17h00). A pausa foi decidida pela PO aos 93%, para ter folga.
