---
id: R-20261124-211553-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:15:53-04:00
---
# testes: RD-1666 a RD-1668 do PR dos prints com API real, para o próximo PR

## Contexto
Contexto: o corretor revisou o PR dos prints (I-9, C-5; branch nuvem/T-0086-prints-api-real) sem bloqueio.

## O que preciso / o que mudou
O que preciso, no próximo PR seu: RD-1666 — um runner só para tests/e2e (rodar-prints-v0312.sh copia rodar-portal-integracao.sh; api-prints-v0312.ts repete o fim de api-portal-integracao.ts), com servidor, roteiro, portas e URL de espera por parâmetro; RD-1667 — levar entrar(p, base, empresa, email, senha) para tests/e2e/apoio-e2e.mjs (hoje em prints-v0312.mjs, bko-cadastro.mjs:56 e portal-integracao.mjs:186); RD-1668 — no plano-v0.3.12.md, o runner só em X-4 e I-9/C-5 só com pasta, quantidade, situação e recado aberto.

## Pronto quando
Pronto quando: PR seu com os três, sem mudar os prints.
