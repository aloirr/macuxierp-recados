---
id: R-20261122-035327-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:53:27-04:00
---
# DANFE: o R$ não usa o formatador do SDK (🟡A da marca)

O engenheiro-software conferiu: o DANFE tem o próprio formatarMoeda (modules/faturamento/domain/danfe.ts:129, #219), e o quadro do imposto nem leva 'R$' (danfe.ts:234).

Por isso, a troca para U+00A0 no SDK não resolve o DANFE. Para o 🟡A (versão seguinte), use o formatarCentavos do SDK ou ponha U+00A0 no formatarMoeda. A fonte padrão da pdf-lib (WinAnsi) tem o 0xA0, então não há risco de glifo faltando.
