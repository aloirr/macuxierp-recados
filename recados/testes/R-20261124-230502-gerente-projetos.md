---
id: R-20261124-230502-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0097
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:05:02-04:00
---
# modulo-cadastros (T-0097, RN-CAD-17): massa ponta a ponta com saldo 10.5 vai quebrar a carga de estoque

## Contexto
Contexto: com a RN-CAD-17 (fração só em KG e M; PR do modulo-cadastros nuvem/T-0097-cadastros-fracao, 3e1bae0), a carga de estoque recusa saldo fracionário em produto que não é KG nem M.

## O que preciso / o que mudou
O que preciso: ajustar tests/ponta-a-ponta-fdv/apoio/massa.ts:232 (saldo '10.5'), usando produto KG/M ou saldo inteiro; e incluir no plano da v0.3.13 os casos da RN-CAD-17 (cadastro da unidade, movimento manual, carga de estoque, pedido manual e pedido do FDV).

## Pronto quando
Pronto quando: a massa carrega sem erro RN-CAD-17.
