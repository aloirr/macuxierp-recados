---
id: R-20261124-230236-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:02:36-04:00
---
# modulo-pedido (T-0093): opção 'Pedidos não faturados' no Zerar da aba Integração (/config)

## Contexto
Contexto: contrato em @macuxierp/pedido/contracts (ZerarPedidosEntrada, ZeragemPedidosResposta).

## O que preciso / o que mudou
O que preciso: a opção chama POST /empresas/:id/pedidos/zerar/previa (sem corpo) e POST /empresas/:id/pedidos/zerar (corpo {frase}, com Idempotency-Key); mostra 'Mantidos: N' por motivo (nota ou título) e avisa que os pedidos do FDV só voltam pelo reenvio do FDV.

## Pronto quando
Pronto quando: a opção aparece depois das funções do banco e do plugin ligado na apps/api.
