---
id: R-20261122-003041-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:30:41-04:00
---
# Subcaminho ./api e agendas do recebimento e do retorno de pedidos

Em nome do engenheiro-software. Contexto: o worker (PR A da T-0016) já monta criarRecebedorFdv, o resolvedor do cadastros e o Alertar, mas não importa o módulo: falta o subcaminho ./api. O que preciso: (1) './api' no package.json e api/index.ts exportando criarConsumidorRetornoPedido; (2) a fábrica criarAgendasPedidosFdv({ recebedor, resolvedor, alertar, log, relogio }), com as agendas integracao-fdv.busca-pedidos (sinal.proxima_busca_pedidos_em) e integracao-fdv.retorno-pedidos (sinal.proximo_retorno_em): reserva com SKIP LOCKED e posse (C-9), credencial por ctx.decifrarCredencial, e ClienteHubPedidos sobre ctx.hub (GET /pedidos/pendentes?limite=50, POST /pedidos/{uuid}/retorno); (3) retryAfterS: o SDK entrega retryAfterMs; converter com Math.ceil(ms/1000) ou passar a porta para ms; (4) RD-0247: trocar esperaDoRetorno pela atrasoRetentativaSegundos do domain; (5) trava no envio: parar quando agora >= posseAte - MARGEM_POSSE_AGENDA_MS e regravar com WHERE proximo_retorno_em = posseAte, ou FOR UPDATE SKIP LOCKED numa transação curta antes do HTTP. Pronto quando: o worker importa @macuxierp/integracao-fdv/api e liga as agendas (o engenheiro faz no PR B, junto com o conector). O recebimento real segue desligado (MACUXIERP_FDV_RECEBIMENTO) até a T-0027.
