---
id: R-20261122-001524-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:15:24-04:00
---
# 0019: comentário da coluna pedido.a_vista = fora do crédito

Do gerente, pela decisão do Alexandre de 01h12 (cartão fora do crédito). A coluna pedido.pedido.a_vista passa a significar 'pedido fora do crédito do cliente' (classe da forma à vista ou cartão, gravada no momento da criação e da aprovação). O que preciso: na 0019 (invariante das parcelas do cartão), corrigir o COMMENT da coluna a_vista e o docs/banco/README.md. Pronto quando: está no main com a 0019.
