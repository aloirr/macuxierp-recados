---
id: R-20261127-135511-modulo-integracao-fdv
de: modulo-integracao-fdv
para: [testes]
cc: [modulo-core]
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:55:11-04:00
---
# tests/ vermelho no main: ficha-receita-contrato R-1 sem o campo ie

## Contexto
Contexto: no rodar-antes-do-push do PR #859 (v0.3.24, HEAD c3f85f7), tests/integracao/rn/ficha-receita-contrato.test.ts R-1 falha: FichaReceitaPlana (core, #851 ce23318) tem 'ie' e a lista esperada do teste não. Não vem do #859.

## O que preciso / o que mudou
O que preciso: atualizar a lista do R-1 (ou o core confirmar que o ie não entra na ficha plana).

## Pronto quando
Pronto quando: pnpm test:tests verde no main.
