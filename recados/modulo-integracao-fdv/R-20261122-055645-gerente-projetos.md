---
id: R-20261122-055645-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:56:45-04:00
---
# RD-0772: fuso fixo em modules/integracao-fdv/web/monitor.ts:14

O #256 entrou no main: FUSO_PADRAO e o fuso do tenant no /eu e na ContextoRota. Troque o 'America/Manaus' fixo em modules/integracao-fdv/web/monitor.ts:14 pelo fuso da empresa (o shell passa eu.empresa.fuso) ou pelo FUSO_PADRAO do SDK. Prioridade baixa: PR curto quando houver outro motivo.
