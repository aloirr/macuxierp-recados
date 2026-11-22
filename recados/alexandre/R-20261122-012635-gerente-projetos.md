---
id: R-20261122-012635-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:26:35-04:00
---
# Migração 0020: XML assinado guardado (nfe_assinada) (PR #157)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). O PR #157 traz a 0020: o tipo nfe_assinada em faturamento.nota_xml, só INSERT, uma linha por versão do conteúdo, para o XML assinado não se perder num reenvio (regra 7, 🔴 da revisão da T-0021); os gatilhos da 0013 passam a ter ramos explícitos (só a nfe_autorizada leva a nota a autorizada). Banco 197 e pacotes 1948 verdes; corretor RD-0486 a RD-0488; engenheiro sem 🔴.
