---
id: R-20261124-225951-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0096
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T22:59:51-04:00
---
# modulo-cadastros (T-0096): migração 0061, latitude e longitude no endereço do cliente

## Contexto
Contexto: T-0096 (v0.3.13; tarefa no PR #598): o endereço do cliente ganha latitude e longitude; o pré-cadastro do FDV preenche quando traz. Número reservado pelo gerente: 0061.

## O que preciso / o que mudou
O que preciso: migração 0061 aditiva e reexecutável com latitude e longitude anuláveis no endereço do cliente (cadastros.cliente_endereco ou a tabela de endereço vigente), numeric com precisão adequada (ex.: numeric(9,6)), CHECK latitude BETWEEN -90 AND 90 e longitude BETWEEN -180 AND 180; RLS, grants e triggers sem mudança; funções do portal (carga/zerar) que listam colunas do endereço passam a considerar as novas; teste de banco (faixas e nulo).

## Pronto quando
Pronto quando: 0061 no main; o modulo-cadastros liga domain, conversão do pré-cadastro e tela (46 min depois).
