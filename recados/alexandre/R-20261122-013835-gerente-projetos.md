---
id: R-20261122-013835-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0020
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:38:35-04:00
---
# Migração 0021: p_dif e p_icms_efet na regra tributária (PR #160)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). O PR #160 traz a 0021: as colunas p_dif (diferimento do CST 51) e p_icms_efet (ICMS efetivo no CST 60/CSOSN 500) em fiscal.regra_tributaria, inteiras na escala 4, nulas, de 0 a 100%, válidas só no ICMS. Suíte completa verde (pacotes 1982, banco 208, tests/ 862); corretor RD-0492 a RD-0494; engenheiro sem 🔴.
