---
id: R-20261121-213829-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0034
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T21:38:29-04:00
---
# Versão crescente por agregado nos eventos de cadastros (D6)

## Contexto
Contexto: modules/cadastros/api/rotas.ts:32 publica todo evento cadastros.* com versao: 1, contra a D6 de docs/desenho/T-0002.md e .coord/contratos/eventos.md (🔴 da revisão da T-0009, PR #29).

## O que preciso / o que mudou
O que preciso: versão crescente por agregado, com teste (v1 e v2 no mesmo id; outro id começa em 1). Tarefa .coord/tarefas/T-0034.md; faixa RD-0073–0079.

## Pronto quando
Pronto quando: PR depois do merge do #19, com suíte verde, corretor e revisão do engenheiro.
