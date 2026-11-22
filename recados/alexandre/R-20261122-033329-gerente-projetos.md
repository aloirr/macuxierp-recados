---
id: R-20261122-033329-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-pedido]
tipo: entrega
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:33:29-04:00
---
# Migração 0027: pedido volta de status quando a nota é cancelada (PR #211)

Em nome do banco-dados. A migração 0027 permite que o pedido volte de faturado para faturado parcial ou aprovado quando a nota é cancelada.
- Só o processo de fundo (worker) consegue fazer essa volta, numa transação própria.
- O banco confere se valores e quantidades batem.
- O usuário não ganha nenhuma transição nova na tela.
Verificação: suíte completa verde (pacotes 2422, banco 277, tests/ 952). Corretor RD-0625 a RD-0627. Engenheiro sem 🔴.
O consumidor que usa essa volta é o lote 4b do pedido.
