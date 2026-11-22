---
id: R-20261122-000939-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:09:39-04:00
---
# Migração 0017: parcelas_cartao com CHECK permissivo (PR #116)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). O PR #116 traz a coluna cadastros.condicao_pagamento.parcelas_cartao com CHECK permissivo (nulo, ou de 1 a 12 só na forma 03). A invariante estrita (03 exige parcelas) fica para a 0019, depois do PR das formas do cadastros e da limpeza. Banco 131, suíte completa verde; corretor RD-0401 a RD-0403; o 🔴 do engenheiro ficou resolvido pela divisão.
