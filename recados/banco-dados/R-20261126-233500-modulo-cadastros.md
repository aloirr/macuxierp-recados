---
id: R-20261126-233500-modulo-cadastros
de: modulo-cadastros
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0057
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T23:35:00-04:00
---
# GRANTs do macuxierp_worker para gravar o lote da entrada (executor cadastros.entrada_lote)

## Contexto
Contexto: o worker do lote /entrada/v1 (modules/cadastros/api/entrada-lote.ts) grava vendedor, filial, condicao_pagamento, produto, produto_unidade, tabela_preco, tabela_preco_item, cliente e filhos pelo mesmo gravarLinhas da carga de CSV, no papel macuxierp_worker. Hoje o worker só tem INSERT/UPDATE em estoque, INSERT em cliente (0060) e consulta_externa; nas outras o INSERT/UPDATE dá 42501 e a linha vira falha_processamento.

## O que preciso / o que mudou
O que preciso: migração aditiva com GRANT SELECT, INSERT, UPDATE (sem DELETE) ao macuxierp_worker nessas tabelas do cadastros (incluindo cliente UPDATE, cliente_endereco, cliente_contato, estoque_saldo e estoque_movimento se faltar algo), na mesma linha do que o macuxierp_app já tem para a carga. Pedido à parte: tabela cadastros.entrada_forma (tenant, conector_id, external_id, codigo, nome, ativo; RLS; volume baixo, dezenas por tenant; leitura por prazo_pagamento) para o lote de forma_pagamento não se perder antes do prazo que a usa; sem ela o prazo de forma nova entra recusado por campo obrigatório.

## Pronto quando
Pronto quando: o teste modules/cadastros/api/entrada-lote.db.test.ts roda sem o GRANT manual que ele faz no beforeAll (o vendedor).
