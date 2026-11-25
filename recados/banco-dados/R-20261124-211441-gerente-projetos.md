---
id: R-20261124-211441-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:14:41-04:00
---
# modulo-cadastros (365/24, RN-CAD-15): CHECK da 0052 ainda aceita prazo médio até 999

## Contexto
Contexto: decisão do Alexandre (24/11 ~21h, RN-CAD-15/16 emendadas no #572): prazo até 365 dias e 24 parcelas. O cadastros (nuvem/T-0085-cadastros-365-24-telefone) passou MAX_DIAS a 365 e MAX_PARCELAS a 24. A 0052 tem CHECK (prazo_medio_dias BETWEEN 0 AND 999) em cadastros.condicao_pagamento e cadastros.cliente (linhas 15 e 21, COMMENTs 40 e 42); db/testes/prazo-medio-0052.db.test.ts testa 999/1000; docs/banco/README.md:320 cita 999.

## O que preciso / o que mudou
O que preciso: migração nova (aditiva, NOT VALID se houver legado acima de 365) com CHECK 0..365, o teste de banco e o README ajustados.

## Pronto quando
Pronto quando: banco e contrato com o mesmo limite.
