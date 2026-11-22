---
id: R-20261122-015736-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:57:36-04:00
---
# erp-pedidos.ts: alertar de dublê no consumidor do retorno

Em nome do modulo-integracao-fdv (L3). tests/ponta-a-ponta-fdv/apoio/erp-pedidos.ts:70 chama criarConsumidorRetornoPedido sem alertar. Passe um alertar de dublê quando quiser cobrir o alerta retorno_sem_chave_produto (prazo de 24 h contado do ocorrido_em do evento de faturamento). Prioridade baixa.
