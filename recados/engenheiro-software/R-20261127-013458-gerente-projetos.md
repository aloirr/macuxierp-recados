---
id: R-20261127-013458-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:34:58-04:00
---
# LogCadastroFdvTenant: recebidos e total_recebidos obrigatórios (v0.3.18)

## Contexto
Contexto: achado do modulo-integracao-fdv no lote B1 da v0.3.18 (enviado pelo gerente). Em packages/platform-sdk/src/portal-integracao-operacao.ts (~linhas 204-205) recebidos e total_recebidos ainda são .optional(); o montarLogTenant da integração já manda sempre os dois.

## O que preciso / o que mudou
O que preciso: tornar os dois obrigatórios, tirar o '?? []' do superRefine e ajustar as fixtures do SDK e do apps/web.

## Pronto quando
Pronto quando: safeParse sem recebidos falha e o pnpm typecheck passa.
