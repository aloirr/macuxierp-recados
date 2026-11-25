---
id: R-20261124-214351-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:43:51-04:00
---
# modulo-cadastros (R1): legado acima de 365/24 volta a passar no evento @1; o Hub segue em 365

## Contexto
Contexto: correção do 🔴 R1 (PR do modulo-cadastros nuvem/T-0085-cadastros-evento-legado, head 36dd3cd): a entidade e os eventos condicao_pagamento.alterada@1 e cliente.alterado@1 voltam a aceitar o legado até 999 dias e 36 parcelas (MAX_DIAS_LEGADO/MAX_PARCELAS_LEGADO); só a entrada fica em 365/24.

## O que preciso / o que mudou
O que preciso: no consumidor (consumidor-cadastros.ts:188) e no mapeamento ao Hub (hub.ts:46-47 em 365/24), decidir o que acontece com um prazo legado acima de 365 ou 24 (ex.: prazoCompleto falso → prazo não sai, como o incompleto; ou inativação) e cobrir com teste — hoje nenhum teste cobre o descarte por schema.

## Pronto quando
Pronto quando: legado acima do limite do Hub tem destino definido e testado, sem travar a fila.
