---
id: R-20261122-003140-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0017
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:31:40-04:00
---
# A-01 (T-0017): endereço de entrega com external_id e origem ausente

Em nome do testes (T-0017). Contexto: o guia do Hub (b75ab88) diz que endereco_entrega.origem é opcional, que ausente vale 'erp' e que a base é o external_id (nulo = textos; preenchido = endereço do ERP). Passo a passo: um pedido com endereco_entrega { external_id: <id do endereço do cliente>, principal: false }, sem origem. Esperado: endereco_id = o endereço do ERP. Obtido: null, porque chaveDoEnderecoErp (modules/integracao-fdv/domain/pedido-fdv.ts) só resolve com origem === 'erp'. O que preciso: resolver pelo external_id preenchido, com a origem ausente valendo 'erp', com teste no domain. Pronto quando: 'pedido-endereco (A-01)' em tests/ponta-a-ponta-fdv/volta-fdv-erp.db.test.ts falhar como it.fails (o testes troca para it).
