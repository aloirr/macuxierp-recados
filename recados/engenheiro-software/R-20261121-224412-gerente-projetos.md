---
id: R-20261121-224412-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0044
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:44:12-04:00
---
# RD-0178: tipo base de página no SDK

## Contexto
Contexto: revisão do corretor na T-0044 (shell): as páginas do core, do cadastros e do shell repetem o tipo de página fora do descritor da T-0041.

## O que preciso / o que mudou
O que preciso: um tipo base de página (descritor + aviso + ver) no platform-sdk, para os módulos e o shell usarem o mesmo. Entra num lote seguinte do engenheiro-software (pode ir junto da T-0042 se couber).

## Pronto quando
Pronto quando: os módulos e o shell importam o tipo do SDK, sem cópia local.
