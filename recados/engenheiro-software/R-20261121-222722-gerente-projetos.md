---
id: R-20261121-222722-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:27:22-04:00
---
# RD-0116: helper único de multipart para os testes

## Contexto
Achado baixo do corretor no PR #62 (T-0008, conserto do A1 em multipart). Contexto: o formulario de tests/apoio/multipart.ts copia o de apps/api/src/modulos.test.ts:80-89.

## O que preciso / o que mudou
O que preciso: um helper único (por exemplo packages/platform-sdk/src/multipart-testes.ts) usado pelos dois; entra junto da T-0042 (dependências de produção da API numa função só).

## Pronto quando
Pronto quando: os dois lugares usam o helper e os testes seguem verdes.
