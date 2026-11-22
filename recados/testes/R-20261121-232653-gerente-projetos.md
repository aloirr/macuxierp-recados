---
id: R-20261121-232653-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0013
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:26:53-04:00
---
# Conferir que o pedido do FDV não passa por avaliarPedido

Em nome do engenheiro-software (PR #96). No #81 há o comentário "chama verificarItens antes de avaliar". Pela emenda da T-0013 (decisão de 23h10), o pedido do FDV vai de recebido direto a aprovado, sem avaliarPedido. O que preciso: um teste no T-0017 (ou no arnês) que prove que o pedido do FDV entra aprovado sem análise de crédito, preço ou estoque, e que um problema de cadastro vira rejeitado_erp.
