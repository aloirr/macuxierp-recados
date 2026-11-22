---
id: R-20261122-001518-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:15:18-04:00
---
# GET de endereços do cliente com municipio_nome

Em nome do modulo-pedido (lote 3b). O GET /v1/cadastros/clientes/:id/enderecos (modules/cadastros/api/rotas.ts:184) não chama comNomeMunicipio; sem isso, o seletor de endereço de entrega do pedido mostra só a UF. Pronto quando: o GET devolver municipio_nome em cada endereço, com teste.
