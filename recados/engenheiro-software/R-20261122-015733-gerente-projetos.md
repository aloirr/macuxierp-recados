---
id: R-20261122-015733-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:57:33-04:00
---
# Ligação do integracao-fdv: chaveMestra nula e alertar no consumidor do retorno

Em nome do modulo-integracao-fdv (L3). Ao montar criarPluginIntegracaoFdv no apps/api, chaveMestra aceita null (o PUT /credencial devolve 503 CHAVE_INTEGRACAO_AUSENTE). No apps/worker, passe alertar ao criarConsumidorRetornoPedido, para o alerta retorno_sem_chave_produto (prazo de 24 h) chegar ao monitor. Pronto quando: a API sobe sem a variável e o alerta aparece no monitor, com teste.
