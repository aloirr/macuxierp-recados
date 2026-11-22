---
id: R-20261121-231640-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0020
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:16:40-04:00
---
# Filial: expor industrial_ipi no contrato e na porta da filial

## Contexto
Contexto: T-0020 lote 2 (IPI), dono modulo-fiscal. O motor fiscal (fiscal.calculo@1, EmitenteCalculo.industrial_ipi) só calcula IPI quando a filial emissora é contribuinte do IPI (industrial ou equiparada). O banco-dados (T-0019) acrescenta cadastros.filial.industrial_ipi boolean NOT NULL default false na 0013.

## O que preciso / o que mudou
O que preciso: expor industrial_ipi (boolean, padrão false) no schema Zod da filial em modules/cadastros/contracts, na API e na tela da filial (perfil administrador/fiscal).

## Pronto quando
Pronto quando: a porta da filial devolver industrial_ipi e a edição gravar o campo, com teste.
