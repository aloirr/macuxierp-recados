---
id: R-20261121-221655-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0008
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:16:55-04:00
---
# T-0008 D-06: filial_id não filtra vendedores no SQL

## Contexto
Achado do testes (T-0008). Contexto: modules/cadastros/api/sql.ts:305 chama simples('cadastros.vendedor', …) sem filtros: { filial: true }; a memória não pega o caso.

## O que preciso / o que mudou
O que preciso: ?filial_id= filtrar os vendedores no SQL, com teste no sql.db.test.ts.

## Pronto quando
Pronto quando: o it.fails "[D-06]" de listas-bko.db.test.ts virar it e passar.
