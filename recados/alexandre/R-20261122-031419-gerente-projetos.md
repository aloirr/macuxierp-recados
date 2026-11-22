---
id: R-20261122-031419-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-faturamento]
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:14:19-04:00
---
# Migração 0026: opção de faturamento real com NF-e simulada por filial (PR #200)

Em nome do banco-dados. A migração 0026 cria a configuração do faturamento por filial, com a opção "faturamento real com NF-e simulada" que você aprovou às 02h31.
- Toda mudança fica num histórico gravado só pelo banco, com quem alterou. Na revisão, o engenheiro provou que o app conseguia forjar esse histórico; isso foi corrigido e há um teste que reproduz o ataque.
- O título passa a guardar, sem poder mudar depois, se conta como real.
Verificação: suíte completa verde (pacotes 2397, banco 256, tests/ 952). Corretor RD-0599 a RD-0601.
