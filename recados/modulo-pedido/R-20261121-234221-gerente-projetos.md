---
id: R-20261121-234221-gerente-projetos
de: gerente-projetos
para: [modulo-pedido, modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:42:21-04:00
---
# RD-0340: ehAVista único, do contrato do cadastros

Em nome do corretor-redundancias (lote à vista do cadastros). modules/pedido/domain/validacao.ts:33 tem um ehAVista próprio, com critério diferente. A regra está confirmada pelas decisões do Alexandre de 23h55 e 00h30: à vista = forma 01, 17 ou 04 E todos os prazos 0; boleto com prazo 0 não é à vista e entra na análise de crédito (RN-PED-04). O que preciso: o pedido apaga o ehAVista local e importa ehAVista de @macuxierp/cadastros/contracts quando o lote à vista do cadastros entrar; o faturamento usa a mesma função no indPag. Pronto quando: um critério só no repositório.
