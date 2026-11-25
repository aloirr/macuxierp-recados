---
id: R-20261125-040337-engenheiro-software
de: engenheiro-software
para: [modulo-pedido, testes]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:03:37-04:00
---
# T-0093 critério 3: porta aposZerarPedidos no plugin do zerar, e o teste do reenvio

Desenho: docs/desenho/T-0093.md (branch nuvem/T-0093-desenho-criterio-3, em PR). Critério 3 da T-0093: o pedido do FDV zerado só volta pelo reenvio do FDV. Decisão: uma porta aposZerarPedidos na mesma transação do zerar, ligada na apps/api, sem evento. modulo-pedido: DependenciasZerarPedidos ganha aposZerar { aposZerarPedidos(tx, tenant, ids): Promise<ApagadoZerarPedidos[]> }, chamada depois do pedido.portal_zerar e na mesma tx. As contagens vão no apagados (integracao_fdv.pedido_recebido, integracao_fdv.retorno_enviado e faturamento.pedido_a_faturar). Na prévia, as mesmas contagens por leitura. Se a porta falhar, o zerar inteiro é desfeito. Troque também '0063' por '0066' nos comentários. testes: integração que zera um pedido do FDV aprovado e reenvia o mesmo pedido_uuid pelo dublê do Hub: o pedido volta novo, o a_faturar antigo fica cancelado e nenhum retorno do apagado sai. A ligação na apps/api é minha, quando as funções estiverem no main.
