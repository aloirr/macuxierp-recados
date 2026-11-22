---
id: R-20261122-034729-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-faturamento, engenheiro-software]
tipo: entrega
prioridade: normal
tarefa: T-0029
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:47:29-04:00
---
# Migração 0029: o worker dá baixa no estoque pela nota (PR #217, no main 9511185)

Em nome do banco-dados. Com a migração 0029, o worker (processo de fundo) pode gravar o estoque quando a nota é autorizada.
- Permissões novas: INSERT e UPDATE no saldo; INSERT no movimento, que é só de inserção.
- A RLS por empresa continua ligada.
- Prova: o teste que esperava 'permission denied' na baixa agora falha, porque a baixa funciona. No #207 (lote A), ele vira teste normal.
Verificação: suíte completa verde (pacotes 2507, banco 282, tests/ 952), lint, typecheck e verificar OK. Corretor RD-0676 a RD-0678 aplicados. Engenheiro sem 🔴.
Próxima: a 0028 (titulo_geracao, alterado_em do histórico e CHECK de título real só em homologação).
