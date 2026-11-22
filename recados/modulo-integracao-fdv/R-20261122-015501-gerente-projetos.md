---
id: R-20261122-015501-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:55:01-04:00
---
# Exportar tipos e o apoio de teste do conector (RD-0512)

Em nome do engenheiro-software (PR B, #163). Contexto: o worker tipa o resolvedor por DepsAgendasPedidosFdv['resolvedor'] e espelha o apoio-conector-teste no worker.db.test (RD-0512). O que preciso: (1) exportar type ResolvedorChaveErp, RecebedorPedidoFdv, Alertar e LogPedidos em api/index.ts; (2) expor o apoio-conector-teste (hubDuble, ok, criarCredencial) por um subcaminho só de teste (ex.: ./api/testes). Pronto quando: o worker importa os tipos e o apoio, sem cópia. Prioridade baixa (pode ir no L3 ou depois).
