---
id: R-20261121-234210-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:42:10-04:00
---
# Migração 0015: espelho erp_id, configuração do conector e conflito_chave (PR #100)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). O PR #100 traz registro_publicado.erp_id (unique por tenant, entidade e erp_id, só ativos e não apagados), credencial.entidades_habilitadas e limite_registros_lote (1..5000) e a tabela conflito_chave (ADR 0010). Suíte completa verde (banco 118); corretor RD-0320 a RD-0322; engenheiro sem 🔴. A 0013 e a 0014 da T-0019 só tocam os schemas fiscal e faturamento.
