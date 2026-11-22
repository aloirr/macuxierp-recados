---
id: R-20261122-060456-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:04:56-04:00
---
# dataHora do shell repete o hora(fuso) do módulo

Achado do corretor no PR do fuso do faturamento (baixa): o dataHora do shell (apps/web/src/lib/telas/faturamento.ts:167) repete o envoltório do hora(fuso) do módulo. Use o do módulo no PR em que trocar o fuso fixo (RD-0772, R-20261122-055648).
