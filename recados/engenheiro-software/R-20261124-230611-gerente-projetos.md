---
id: R-20261124-230611-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0097
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:06:11-04:00
---
# RD-1831 (corretor, T-0097 do modulo-cadastros): exportar ESCALA_QTD4 e qtd4Inteira no SDK

## Contexto
Contexto: a escala Qtd4 (10_000) está em 3 lugares: modules/cadastros/contracts/fracao.ts:7,21 (ESCALA_QTD e % 10_000), modules/integracao-fdv/domain/quantidade-hub.ts:6,16 (ESCALA_QTD4, qtd4InteiraParaHub) e um literal em packages/platform-sdk/src/formatar.ts:88.

## O que preciso / o que mudou
O que preciso: o platform-sdk exporta ESCALA_QTD4 e qtd4Inteira(q), com teste; depois o cadastros e o integracao-fdv trocam as cópias (recado aos dois).

## Pronto quando
Pronto quando: helpers no main (v0.3.13 ou seguinte, a critério do gerente).
