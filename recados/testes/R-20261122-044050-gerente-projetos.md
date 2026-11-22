---
id: R-20261122-044050-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0044
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:40:50-04:00
---
# RD-0722: listas-bko usa a troca de NBSP local

Rodada do corretor sobre o #238.
RD-0722 (baixa): tests/integracao/web/listas-bko.db.test.ts:111 tem mais uma versão local de 'trocar o NBSP', que deixa de fora o U+202F. Use o semEspacoDuro de packages/platform-sdk/src/testes (import relativo, no estilo das linhas 10 e 14).
Para um PR curto quando houver outro motivo.
