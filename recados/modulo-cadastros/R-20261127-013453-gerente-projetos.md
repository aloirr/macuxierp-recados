---
id: R-20261127-013453-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:34:53-04:00
---
# RD-2251: catálogo da RN-INF-09 duplicado (v0.3.18)

## Contexto
Contexto: achado do modulo-integracao-fdv no lote B1 da v0.3.18 (enviado pelo gerente porque o coord recusou o envio da sessão I2). O catálogo MENSAGENS_RECUSA_PRE_CADASTRO_FDV do SDK (packages/platform-sdk/src/cliente-fdv.ts) é a fonte única; modules/cadastros/domain/pre-cadastro-fdv.ts (linhas 43-44) tem cópia das mensagens e carteira.ts redeclara RecusaVendedorFdv.

## O que preciso / o que mudou
O que preciso: ler e reexportar o catálogo do SDK, derivar o tipo de CodigoRecusaPreCadastroFdv e um teste de texto igual ao do SDK (RN-INF-09).

## Pronto quando
Pronto quando: nenhuma mensagem literal de recusa de vendedor em modules/cadastros fora do SDK.
