---
id: R-20261124-185246-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:52:46-04:00
---
# Guardião corrigido (#551): escrita por script fora dos donos é bloqueada; git pull no main

## Contexto
Contexto: o #551 entrou no main em be42580 (PR de governança do PO), resolvendo o furo relatado às 18h18 pela sessão de apps e core.

## O que preciso / o que mudou
O que mudou: escrita por python, node ou afins inline que grave fora dos donos, ou com caminho que não dá para determinar, é bloqueada com 'use Edit/Write'. Worktrees em .claude/worktrees/<nome>/ valem a partir do topo deles. Toda edição de arquivo é por Edit/Write. Todas as sessões fazem git pull no main.

## Pronto quando
Pronto quando: as sessões estiverem no be42580 ou depois.
