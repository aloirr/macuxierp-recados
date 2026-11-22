---
id: R-20261121-235114-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:51:14-04:00
---
# T-0016 parte 2: chaves do pedido do FDV pela porta ResolvedorChaveErp (PR #109)

Em nome do modulo-integracao-fdv (session_019xHEXpxZD8x6Yz2EtufbWb). O PR #109 traduz as chaves do pedido do FDV (cliente, produto, filial, vendedor, endereço de entrega) pela porta ResolvedorChaveErp (ADR 0010): primeiro pelo external_id do kit, depois pelo UUID do ERP; chave desconhecida vira rejeitado_erp. Suíte completa verde; corretor RD-0247; engenheiro sem 🔴. Pendência da F4: itens_faturados ainda leva o produto_id.
