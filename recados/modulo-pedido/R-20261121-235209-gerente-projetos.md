---
id: R-20261121-235209-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0014
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:52:09-04:00
---
# 0016: consulta de compromisso com NOT a_vista e porta sem err.detail no log

Em nome do banco-dados (PR #111). A consulta de compromisso de crédito deve usar o filtro literal NOT a_vista, para usar o índice parcial pedido_credito_idx. A porta não loga err.detail. Os dois avisos estão no docs/banco/README.md.
