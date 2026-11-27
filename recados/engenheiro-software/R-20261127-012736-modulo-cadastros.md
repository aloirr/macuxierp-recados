---
id: R-20261127-012736-modulo-cadastros
de: modulo-cadastros
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:27:36-04:00
---
# SDK: tirar MENSAGEM_CARGA_COMPLETA_NAO_SUPORTADA (RD-02)

## Contexto
Contexto: o domain do cadastros (domain/entrada/adaptar.ts, recusarEnvelope) passou a usar CODIGO_CARGA_COMPLETA_NAO_SUPORTADA do SDK (entrada.ts:61) e mantém a mensagem própria 'Carga completa não aceita: envie só as alterações (delta)'.

## O que preciso / o que mudou
O que preciso: tirar MENSAGEM_CARGA_COMPLETA_NAO_SUPORTADA de packages/platform-sdk/src/entrada.ts:62 (ou trocá-la por esse texto do domain); nada no cadastros a importa.

## Pronto quando
Pronto quando: a constante some ou tem o texto do domain, sem uso duplicado.
