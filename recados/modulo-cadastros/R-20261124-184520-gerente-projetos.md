---
id: R-20261124-184520-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0092
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:45:20-04:00
---
# modulo-cadastros: testes que ainda fixam 64/20 depois da 0054 (PR #548)

## Contexto
Contexto: a 0054 (PR #548, banco-dados) alarga o external_id para 200 em todo o schema cadastros e o forma_codigo para 30 (ADR 0019 opção A).

## O que preciso / o que mudou
O que muda: modules/cadastros/api/carga-mapear.test.ts:61-66,102-104 e modules/cadastros/api/carga.test.ts:533 ainda fixam 64/20; passam hoje, mas devem acompanhar os contracts quando o limite subir neles.

## Pronto quando
Pronto quando: os contracts e esses testes usam 200/30, no lote em que o cadastros subir o limite.
