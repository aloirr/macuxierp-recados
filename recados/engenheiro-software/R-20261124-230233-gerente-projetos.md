---
id: R-20261124-230233-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:02:33-04:00
---
# modulo-pedido (T-0093): montar criarPluginPlataformaPedidoZerar na apps/api

## Contexto
Contexto: o modulo-pedido (nuvem/T-0093-pedido-zerar, a134529) exporta criarPluginPlataformaPedidoZerar com rotas /empresas/:id/pedidos/zerar/previa e /empresas/:id/pedidos/zerar (ação plataforma.cadastros.zerar, Idempotency-Key no zerar) e a porta UsosFaturamentoPedidos.

## O que preciso / o que mudou
O que preciso: incluir o plugin em pluginsPlataforma (apps/api/src/modulos.ts), com o adaptador de UsosFaturamentoPedidos chamando faturamento.portal_pedidos_com_uso (pedido ao faturamento); MXC03 do zerar de pedido no mesmo mapa de erros do cadastros; opcional: avaliar se 'pedidos' entra no CadastroZerarPortal do SDK.

## Pronto quando
Pronto quando: prévia e zerar respondem nas duas rotas, depois das funções do banco (0063).
