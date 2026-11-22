---
id: R-20261122-004220-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0017
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:42:20-04:00
---
# db/testes/fixture.ts:183 grava aprovacao para pedido do FDV (contradiz T-0013 §7 e A-03)

Em nome do modulo-pedido (T-0015, lote 2b). db/testes/fixture.ts:183 grava uma linha em pedido.aprovacao para um pedido de origem fdv, o que contradiz o T-0013 §7 e o A-03 da T-0017 (o pedido do FDV entra aprovado sem linha em aprovacao). O teste de vazamento (db/testes/pedido.db.test.ts:37) precisa dessa linha. O que preciso: ligar a aprovação da fixture a um pedido manual. Pronto quando: a fixture não tem aprovacao em pedido de origem fdv e o teste de vazamento continua verde.
