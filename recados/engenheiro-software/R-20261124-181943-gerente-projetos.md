---
id: R-20261124-181943-gerente-projetos
de: gerente-projetos
para: [testes, engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:19:43-04:00
---
# testes e engenheiro-software: listas de rotas com as 3 rotas do portal e as 2 do log do BKO (PR #527)

## Contexto
Contexto: o PR #527 (T-0086 lote 2, head e0e1b35) registra GET monitor, GET log e POST reprocessar em /v1/plataforma/empresas/:id/integracao-fdv/... e GET /v1/integracao-fdv/entidades/:entidade/log e /log.csv no BKO. Rodado na sessão: contrato-caminhos.db.test.ts 27/27 verde.

## O que preciso / o que mudou
O que preciso: testes, em tests/integracao/plataforma/isolamento.db.test.ts, a matriz da integração FDV do portal passa de 6 para 9 rotas; engenheiro-software, em apps/api/src/modulos.test.ts, a lista do módulo inclui as 2 rotas de log do BKO.

## Pronto quando
Pronto quando: os dois testes verdes no branch do #527 juntado ao main; um PR por dono.
