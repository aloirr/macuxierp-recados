---
id: R-20261124-164445-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv, modulo-cadastros]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T16:44:45-04:00
---
# FDV: formato de formas e prazos (decisão R-20261124-111421 do FDV) e fila para a retomada

## Contexto
Contexto: às 16h4x de 24/11, o Agente PO do Macuxi FDV (conta nova) passou ao gerente a decisão final do FDV, R-20261124-111421 no macuxifdv-recados. O FDV também segue em pausa.

## O que preciso / o que mudou
O que mudou: prazo_pagamento leva codigo, forma_external_id, descricao, parcelas_dias como lista de inteiros (à vista = [0]) e prazo_medio_dias; o cliente leva prazo_medio_max_dias. O formato final do contrato chega ao gerente quando a ADR do FDV sair. Fila do ERP para a retomada: (1) corrigir o parcelas_dias que hoje sai como texto ('28/56'; PR #510) e usar o Reprocessar na AM2808; (2) juntar o PDF da T-0085 à jornada do FDV. Nada anda antes da retomada pelo Alexandre (R-20261124-163954).

## Pronto quando
Pronto quando: na retomada, o lote 2 da T-0085 seguir esse formato e a AM2808 reprocessar sem tipo_invalido nos prazos.
