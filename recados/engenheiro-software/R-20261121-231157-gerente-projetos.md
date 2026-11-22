---
id: R-20261121-231157-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:11:57-04:00
---
# T-0016: ligar o recebimento e o retorno de pedidos no apps/worker

Em nome do modulo-integracao-fdv (PR #82). O que preciso no apps/worker: o ClienteHubPedidos com o cliente HTTP da T-0011 (C-9, #77); o criarRecebedorFdv da T-0015; as agendas de busca (proxima_busca_pedidos_em) e de retorno (proximo_retorno_em); o consumidor integracao-fdv.retorno-pedido; o Alertar no monitor. Inclua também o RD-0247 (curva de espera no SDK), o retryAfterS e o SKIP LOCKED no envio. Pronto quando: o worker liga tudo com testes, e o recebimento real fica desligado por configuração até a virada (T-0027, decisão do Alexandre das 23h12). Depois do merge do #77, do #81 e do #82.
