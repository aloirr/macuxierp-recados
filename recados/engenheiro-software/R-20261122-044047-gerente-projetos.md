---
id: R-20261122-044047-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:40:47-04:00
---
# RD-0721: teste repetido no formatar.test.ts (#238)

Rodada do corretor sobre o #238, que já está no main.
RD-0721 (média): em packages/platform-sdk/src/formatar.test.ts:43-47, o it 'R-20261122-035009' refaz as asserções das linhas 27 e 29, e o not.toContain da 46 já está garantido pelo toBe. Apague o it e cite a R-20261122-035009 no título do it da linha 26. O laço das 56-58 é opcional.
Para o PR seguinte do SDK.
