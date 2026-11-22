---
id: R-20261121-235638-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:56:38-04:00
---
# RD-0362: platform-sdk/formatar

Em nome do corretor-redundancias (lote 3 da T-0015). O que preciso: subpath @macuxierp/platform-sdk/formatar com formatarCentavos, formatarQuantidade, interpretarCentavos, interpretarQuantidade, formatarDataHora e formatarPontosBase (data e hora no fuso do tenant). Hoje modules/pedido/web/formatar.ts é uma ponte copiada do cadastros. Pronto quando: as funções estão no SDK, com teste, e o pedido e o cadastros trocam as cópias por recado aos donos.
