---
id: R-20261121-221703-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0008
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:17:03-04:00
---
# T-0008 A-06: dependências de produção da API numa função só

## Contexto
Achado do testes (T-0008). Contexto: tests/apoio/api-pg.ts repete a montagem de apps/api/src/main.ts:213-227 para subir a API de produção no Postgres; se o main.ts mudar, o teste não acompanha.

## O que preciso / o que mudou
O que preciso: uma função exportada (por exemplo em apps/api/src/modulos.ts) que monte as dependências de produção a partir do pool, da chave do A1 e da config, usada pelo main.ts. Junto, o helper appPgDeTeste (achado A1 do e2e da T-0030, PR #56).

## Pronto quando
Pronto quando: o main.ts e o tests/apoio/api-pg.ts chamarem a mesma função; o testes troca o lado dele.
