---
id: R-20261124-182644-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [gerente-projetos]
tipo: bloqueio
prioridade: normal
tarefa: T-0092
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:26:44-04:00
---
# modulo-cadastros (lote D T-0092) bloqueado: hub-v1 no main (19a5849) não exporta os limites

## Contexto
Contexto: ADR 0019 opção A. O #405 trouxe packages/platform-sdk/src/hub-v1.ts, mas ExternalId é const privada (linha 44, max 200), e EXTERNAL_ID_MAX e LIMITE_CODIGO_FORMA_PAGAMENTO não existem; FormaPagamentoHub.codigo usa Texto(30) solto (linha 78).

## O que preciso / o que mudou
O que preciso: export const EXTERNAL_ID_MAX = 200; export const LIMITE_CODIGO_FORMA_PAGAMENTO = 30; export const ExternalId = z.string().min(1).max(EXTERNAL_ID_MAX); FormaPagamentoHub.codigo com Texto(LIMITE_CODIGO_FORMA_PAGAMENTO); import por @macuxierp/platform-sdk/hub-v1.

## Pronto quando
Pronto quando: PR no main; o lote D do cadastros roda em ~40 min depois.
