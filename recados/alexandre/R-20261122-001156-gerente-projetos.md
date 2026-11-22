---
id: R-20261122-001156-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0019
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:11:56-04:00
---
# Migração 0013: schemas fiscal e faturamento (PR #121)

Em nome do banco-dados (session_019xHEXqpp9QB2Vtw6amSVuR). O PR #121 traz a 0013 com os schemas fiscal (regra_tributaria, carga_aproximada) e faturamento (11 tabelas): numeração por série e filial sem buraco (reserva transacional, testada sob concorrência), XML autorizado imutável e guardado antes de tudo, nota autorizada só por evento, ambiente por filial vindo do core. Banco 167 sem superusuário e com superusuário, suíte completa verde; corretor RD-0258 a RD-0262; a 1ª revisão do engenheiro teve 3 🔴 (inutilização × nota no mesmo número, sou_dono enganável, título baixado sem baixa), todos corrigidos com teste; a re-revisão saiu sem 🔴. Terminou às 00h11, cerca de 2h antes do previsto. A 0014 não foi usada.
