---
id: R-20261124-232831-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0097
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:28:31-04:00
---
# RD-1846 (corretor, T-0097 do modulo-cadastros): desenho T-0026 ainda diz fator inteiro 1–9999

## Contexto
Contexto: a carga de produto_unidade do modulo-cadastros (nuvem/T-0097-cadastros-carga-fator) passa a aceitar fator decimal com até 4 casas (> 0), fração só em KG e M (RN-CAD-17), alinhada à rota (Qtd4.min(1)) e ao banco (fator bigint CHECK > 0).

## O que preciso / o que mudou
O que preciso: docs/desenho/T-0026.md:109, trocar 'fator

## Pronto quando
inteiro 1–9999' por 'decimal com até 4 casas, > 0; fração só em KG e M (RN-CAD-17); × 10.000'. | Pronto quando: desenho alinhado ao código e ao doc 03.
