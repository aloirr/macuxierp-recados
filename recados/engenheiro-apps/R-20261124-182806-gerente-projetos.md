---
id: R-20261124-182806-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:28:06-04:00
---
# RD-1537 (corretor, lote A do modulo-cadastros): na lista agrupada, esconder a coluna do agruparPor

## Contexto
Contexto: modules/cadastros/web/paginas.ts:62-63 agrupa os prazos por forma_tpag e mantém a coluna Forma de pagamento, que o CSV (colunasCsv) usa.

## O que preciso / o que mudou
O que preciso: ao desenhar a lista agrupada no shell, esconder na tela a coluna do campo agruparPor (no CSV ela continua).

## Pronto quando
Pronto quando: a forma aparece só no cabeçalho do grupo.
