---
id: R-20261124-181631-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:16:31-04:00
---
# modulo-integracao-fdv: lote 2 só fica pronto com tests/integracao/rotas/contrato-caminhos.db.test.ts verde

## Contexto
Contexto: achado do testes, repassado pela sessão coordenadora. O SDK (CAMINHOS_INTEGRACAO_FDV_PLATAFORMA, #515) já declara monitor, reprocessar e log em /v1/plataforma/empresas/:id/integracao-fdv/..., mas a API não registra essas rotas (404), e o teste tem 3 falhas no main.

## O que preciso / o que mudou
O que preciso: no lote 2 (nuvem/T-0086-integracao-operacao), as rotas registradas exatamente nos caminhos de CAMINHOS_INTEGRACAO_FDV_PLATAFORMA.

## Pronto quando
Pronto quando: o teste passa na sessão (bash db/scripts/pg-local.sh e o rodar-antes-do-push no escopo das rotas), com o resultado no corpo do PR. Nota: a T-0093 foi para a v0.3.13.
