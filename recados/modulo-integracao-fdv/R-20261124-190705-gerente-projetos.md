---
id: R-20261124-190705-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:07:05-04:00
---
# T-0086 (modulo-integracao-fdv): rótulo curto por código de erro e por campo nos contracts

## Contexto
Contexto: o Log do /config precisa mostrar o código de erro e o campo em português (marca; RD-1652). O apps/web tinha um dicionário próprio, com 6 de 8 chaves que não batem com MENSAGENS_ERRO de modules/integracao-fdv/domain/mensagens.ts; ele sai, e a tela mostra o código humanizado de forma genérica até haver fonte única.

## O que preciso / o que mudou
O que preciso: exportar nos contracts do módulo o rótulo curto por código de erro e por campo (derivado do catálogo MENSAGENS_ERRO, fonte única).

## Pronto quando
Pronto quando: PR seu com o export e teste; aviso ao engenheiro-apps.
