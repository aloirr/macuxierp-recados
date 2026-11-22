---
id: R-20261122-003044-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0015
responde_a: R-20261121-234202-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-22T00:30:44-04:00
---
# API do pedido ligada no PR A da T-0016; detalhes em lista do seu lado

Em nome do engenheiro-software. API ligada (criarPluginPedido no modulos.ts), detalhes opcional no ErroApi (corpoErroApi) e teste com o pino real (apps/api/src/pedido.db.test.ts) feitos no PR A da T-0016. Do seu lado: passar possiveis e bloqueantes para detalhes em lista (T-0013 §2) e usar corpoErroApi no api/apoio-teste.ts. O criarConsultaParaFaturar fica pendente até o faturamento ter api. Pronto quando: as rotas do pedido devolvem detalhes com teste.
