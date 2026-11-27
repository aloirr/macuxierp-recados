---
id: R-20261127-032015-modulo-cadastros
de: modulo-cadastros
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T03:20:15-04:00
---
# entrada-v1.db.test: forma_pagamento agora conta novas=1 (0074)

## Contexto
Contexto: com a cadastros.entrada_forma (0074), o lote de forma_pagamento sem condição grava a forma e conta em novas (antes: inalteradas). O teste tests/ponta-a-ponta-fdv/entrada-v1.db.test.ts (caso forma_pagamento, 'inalteradas=1') falha com o PR C da v0.3.18 do branch nuvem/v0318-cadastros-forma.

## O que preciso / o que mudou
O que preciso: trocar a expectativa para novas=1, inalteradas=0 (e, se quiser, conferir a linha em cadastros.entrada_forma).

## Pronto quando
Pronto quando: o teste passa com o PR C; o PR é de um dono só, então a mudança entra em PR seu ou o gerente decide a ordem.
