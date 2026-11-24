---
id: R-20261124-182520-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-integracao-fdv]
tipo: pedido
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:25:20-04:00
---
# engenheiro-software: vendedor_external_id opcional no ClienteParaErpFdv (cliente-fdv.ts, PR #526)

## Contexto
Contexto: o FDV aceitou o vendedor_external_id no GET /integracao/v1/clientes/pendentes (R-20261124-182351 no macuxifdv-recados). Ele é aditivo e opcional, nulo quando o vendedor não tem código no ERP, com meta no FDV v1.0.34, ~01h00 de 25/11. Decisão do Alexandre: o ERP lê o campo se vier e mostra '—' quando ele vem nulo ou ausente. Hoje o ClienteParaErpFdv (packages/platform-sdk/src/cliente-fdv.ts:33, branch nuvem/T-0059-desenho) só passa o campo pelo passthrough, sem tipo; o ClienteRecebidoFdv:194 já tem vendedor_external_id nullable.

## O que preciso / o que mudou
O que preciso: no ClienteParaErpFdv, vendedor_external_id: z.string().max(200).nullish(), com um teste que aceita o campo presente, nulo e ausente; no #526, se ainda não tiver merge, ou num PR curto.

## Pronto quando
Pronto quando: o SDK no main tipa o campo antes do lote 4 do integracao-fdv (~00h20).
