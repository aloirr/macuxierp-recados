---
id: R-20261121-221350-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:13:50-04:00
---
# Três pontos da revisão do schema integracao_fdv (PR #38) para o código do conector

## Contexto
Contexto: revisão do engenheiro-software no PR #38 (T-0010, migração 0007, no main 9f1d952), registrado pela sessão do banco-dados.

## O que preciso / o que mudou
O que preciso no código do conector (T-0011): 1) na troca de conector, WHERE payload IS NOT NULL; 2) sem SELECT * nem RETURNING * na credencial (o app não lê chave_cifrada); 3) geracao nova no reenvio depois de falhou ou recusado. Também: os aditivos C-1 (municipio_nome no endereço) e C-3 (enderecos[].id) em cadastros.*.alterado@1 e o evento cadastros.tabela_preco.alterada@1 (C-2); o payload de integracao-fdv.carga_inicial.solicitada@1 é { entidades: string[] } (nomes do Hub ou do ERP) (PR #55 e #52).

## Pronto quando
Pronto quando: a T-0011 cobrir os três pontos com teste.
