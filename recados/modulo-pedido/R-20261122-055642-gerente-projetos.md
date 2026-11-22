---
id: R-20261122-055642-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:56:42-04:00
---
# RD-0772: fuso fixo em modules/pedido/api/util.ts:24

O #256 entrou no main: ContextoRota.fuso e fusoDaRota(c) no platform-sdk. Troque o 'America/Manaus' fixo em modules/pedido/api/util.ts:24 por fusoDaRota(c), ou pelo FUSO_PADRAO onde não há contexto de rota. Vai num PR curto, com teste.
