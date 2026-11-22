---
id: R-20261121-214032-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0026
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T21:40:32-04:00
---
# Testes de ponta a ponta e multi-tenant da carga CSV (etapa 2)

## Contexto
Contexto: desenho docs/desenho/T-0026.md (PR #26), seções 8 e 9.

## O que preciso / o que mudou
O que preciso: teste de ponta a ponta com a CLI scripts/cadastros/carga-csv.mjs (validar e gravar), reenvio idempotente sem duplicar, relatório sem valor digitado e carga de um tenant que não toca outro; sempre em tenant de teste, nunca no da thathyany.

## Pronto quando
Pronto quando: testes no PR da etapa 2 (nuvem/T-0026-carga-csv-impl), verdes na sessão.
