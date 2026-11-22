---
id: R-20261122-055648-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:56:48-04:00
---
# RD-0772: fuso fixo em apps/web/src/lib/telas/faturamento.ts:32

O #256 entrou no main. Troque o 'America/Manaus' fixo em apps/web/src/lib/telas/faturamento.ts:32 por eu.empresa.fuso (como as listas já fazem com colunasDaPagina(id, eu.empresa.fuso)) ou pelo FUSO_PADRAO do SDK. Pode ir no PR (B), se ainda der, ou no seguinte.
