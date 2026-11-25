---
id: R-20261124-231729-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0097
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:17:29-04:00
---
# modulo-pedido (T-0097): rejeitado_erp por fração usa item_incoerente com 'motivo'; o retorno ao FDV deve preferir o motivo

## Contexto
Contexto: o pedido do FDV com quantidade fracionária fora de KG/M (RN-CAD-17) é recusado (RN-PED-01) com o código existente item_incoerente e o campo novo, opcional e aditivo, motivo ('RN-CAD-17: Fração só em KG e M: use quantidade inteira') no resultado recusado (nuvem/T-0097-pedido-fracao, e7d97e6). Não houve código novo para não quebrar o Record exaustivo TEXTO_DA_REJEICAO.

## O que preciso / o que mudou
O que preciso: em modules/integracao-fdv/domain/retorno-pedido.ts, no retorno rejeitado_erp, usar o motivo quando vier e cair no TEXTO_DA_REJEICAO só sem ele (hoje item_incoerente diz 'Item com desconto maior que o valor do item'); teste.

## Pronto quando
Pronto quando: o FDV recebe o motivo da fração.
