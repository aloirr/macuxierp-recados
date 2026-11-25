---
id: R-20261125-040334-engenheiro-software
de: engenheiro-software
para: [banco-dados, modulo-integracao-fdv, modulo-faturamento]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:03:34-04:00
---
# T-0093 critério 3: portal_liberar_reenvio_pedidos e portal_descartar_a_faturar (migração depois da 0066)

Desenho: docs/desenho/T-0093.md (branch nuvem/T-0093-desenho-criterio-3, em PR). Critério 3 da T-0093: o pedido do FDV zerado só volta pelo reenvio do FDV. Decisão: uma porta aposZerarPedidos na mesma transação do zerar, ligada na apps/api, sem evento. Funções, numa migração do banco depois da 0066 (os donos dos schemas validam a regra): (1) integracao_fdv.portal_liberar_reenvio_pedidos(p_tenant uuid, p_pedido_ids uuid[]) → {pedidos_liberados, retornos_descartados}. O pedido_recebido com esses pedido_id deixa de bloquear o reenvio. Preferência: deleted_at = now() com o UNIQUE (tenant_id, pedido_uuid) trocado por índice único parcial WHERE deleted_at IS NULL, que guarda o histórico; senão, DELETE. Os retorno_enviado ainda não enviados desses pedidos saem da fila. (2) faturamento.portal_descartar_a_faturar(p_tenant uuid, p_pedido_ids uuid[]) → {a_faturar_cancelados}: status = 'cancelado' só nas linhas a_faturar; faturado_parcial ou faturado = MXC03 em_uso (defesa). As duas: SECURITY DEFINER, search_path fixo, EXECUTE só macuxierp_config, idempotentes, auditoria só com contagens, nada de nota, XML ou título (regra 7). Testes: tenant certo e outro tenant, rodar de novo = 0.
