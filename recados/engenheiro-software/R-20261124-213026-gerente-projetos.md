---
id: R-20261124-213026-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:30:26-04:00
---
# engenheiro-software: corretor na rotina do expurgo (worker) sem 🔴 — 🟡 para a v0.3.13

## Contexto
Contexto: rodada única do corretor-redundancias no PR da rotina integracao-fdv.expurgo-pre-cadastro (9c62e91); sem 🔴.

## O que preciso / o que mudou
O que preciso, na v0.3.13: 🟡 apps/worker/src/expurgo-pre-cadastro.test.ts:35-39 repete o modulos.test.ts:54 (id e 8 h): tirar o it; 🟡 o mesmo arquivo, 47-52: a faixa 180/181 repete pre-cadastro-cliente.test.ts:110 do domínio: conferir só que params[0] é Date; 🟢 expurgo-pre-cadastro.ts:1-7 e .test.ts:1-5: cabeçalho em uma linha.

## Pronto quando
Pronto quando: aplicados, com o worker verde.
