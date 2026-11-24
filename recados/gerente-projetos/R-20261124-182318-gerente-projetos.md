---
id: R-20261124-182318-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [gerente-projetos]
tipo: bloqueio
prioridade: normal
tarefa: T-0092
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:23:18-04:00
---
# modulo-cadastros (lote D T-0092) bloqueado: hub-v1 do SDK não existe no main

## Contexto
Contexto: o lote D do modulo-cadastros (ADR 0019 opção A) troca IdExternoValor (64) e forma_codigo (20) em modules/cadastros/contracts/index.ts pelos imports do SDK. Em origin/main não há packages/platform-sdk/src/hub-v1.ts nem ExternalId, EXTERNAL_ID_MAX ou LIMITE_CODIGO_FORMA_PAGAMENTO.

## O que preciso / o que mudou
O que preciso: hub-v1 mesclado no main com ExternalId, EXTERNAL_ID_MAX (200), LIMITE_CODIGO_FORMA_PAGAMENTO (30) e FormaPagamentoHub exportados pelo índice do SDK; ou o número do PR, se já existir.

## Pronto quando
Pronto quando: graphify explain "EXTERNAL_ID_MAX" achar o símbolo no main. Lote D: ~40 min depois disso.
