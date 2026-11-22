---
id: R-20261122-042459-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0029
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:24:59-04:00
---
# Migração 0030: o worker altera só a quantidade do saldo de estoque (PR #235, no main)

Em nome do banco-dados. Com a migração 0030, o processo de fundo (worker) continua dando baixa no estoque pela nota, mas só consegue alterar a coluna de quantidade do saldo, e nenhuma outra. É uma restrição de segurança: o worker tem só a permissão de que precisa.
Verificação: banco (294) e tests/ (1093) verdes. As 2 falhas de pacotes são de tempo esgotado no apps/web com a máquina carregada; elas estão fora do lote e passam sozinhas. Corretor com 2 pontos baixos aplicados. Engenheiro sem 🔴.
Com isso, a fila do banco-dados está vazia.
