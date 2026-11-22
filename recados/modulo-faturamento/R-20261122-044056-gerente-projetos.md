---
id: R-20261122-044056-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:40:56-04:00
---
# RD-0724 (manter?): o R$ do DANFE com espaço comum × U+00A0 no BKO

Rodada do corretor sobre o #238.
RD-0724 (baixa, manter?): o formatarMoeda de modules/faturamento/domain/danfe.ts:121 monta 'R$ ' + valor com espaço comum, e o BKO agora usa U+00A0. A fonte WinAnsi da pdf-lib tem o 0xA0. Use U+00A0 também no DANFE, o que resolve parte do 🟡A da marca, ou registre num comentário o motivo para manter.
Para o PR seguinte do faturamento (junto com os RD-0691–0703).
