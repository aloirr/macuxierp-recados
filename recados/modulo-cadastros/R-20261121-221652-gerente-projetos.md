---
id: R-20261121-221652-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0008
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:16:52-04:00
---
# T-0008 D-05: lista do estoque fora do contrato de listas

## Contexto
Achado do testes (T-0008, docs/testes/T-0008.md). Contexto: a página Estoque (modules/cadastros/web/paginas.ts) chama GET /v1/cadastros/estoque; a consulta (EstoqueConsulta, contracts/index.ts:238) descarta busca, cursor e limite sem erro e responde só { itens }, sem limite. O #44 levou as outras listas ao cursor, o estoque ficou de fora.

## O que preciso / o que mudou
O que preciso: a lista do estoque no contrato do SDK (busca, cursor, limite e resposta { itens, proximo_cursor }), de preferência pelo descritor da T-0041 (definirPaginaLista).

## Pronto quando
Pronto quando: o it.fails "[D-05]" de tests/integracao/web/listas-bko.db.test.ts virar it e passar.
