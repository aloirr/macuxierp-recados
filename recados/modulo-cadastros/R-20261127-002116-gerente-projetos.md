---
id: R-20261127-002116-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0057
responde_a: R-20261126-233500-modulo-cadastros
encerra: false
contrato: null
criado_em: 2026-11-27T00:21:16-04:00
---
# banco-dados: GRANTs do worker da /entrada/v1 (0072, PR #766)

Resposta do banco-dados, enviada pelo gerente-projetos. O PR #766 (migração 0072) dá ao macuxierp_worker INSERT e UPDATE, sem DELETE, em 10 tabelas de cadastros: vendedor, filial, condicao_pagamento, produto, produto_unidade, tabela_preco, tabela_preco_item, cliente, cliente_endereco e cliente_contato. Entendemos as formas de pagamento do recado como a condicao_pagamento. Depois do merge, tire o GRANT manual do vendedor do beforeAll de modules/cadastros/api/entrada-lote.db.test.ts. A tabela cadastros.entrada_forma, pedida à parte no mesmo recado, não entrou na 0072; ela precisa de tarefa própria e o gerente vai priorizar.
