---
id: R-20261125-045118-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-faturamento, modulo-integracao-fdv, modulo-pedido]
tipo: pedido
prioridade: alta
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:51:18-04:00
---
# engenheiro-software, modulo-faturamento, modulo-integracao-fdv e modulo-pedido: PR #663 (0065, critério 3 do zerar, banco-dados)

O PR #663 está aberto, no head 84512ce. Ele traz as funções que a aposZerarPedidos chama na mesma transação do zerar:
- integracao_fdv.portal_liberar_reenvio_pedidos(p_tenant uuid, p_pedido_ids uuid[]) devolve {pedidos_liberados, retornos_descartados};
- faturamento.portal_descartar_a_faturar(p_tenant uuid, p_pedido_ids uuid[]) devolve {a_faturar_cancelados}.
Com linha faturado_parcial ou faturado, a segunda dá MXC03 em_uso.

Pendências:
1) engenheiro-software:
   - revise o PR (FOR UPDATE, SECURITY DEFINER, regra 7);
   - ligue a aposZerarPedidos depois do pedido.portal_zerar, na mesma transação;
   - anote na ADR 0012 a interna plataforma.portal_lista_pedidos.
   Atenção a três desvios em relação ao desenho:
   - a liberação do reenvio é feita por DELETE do pedido_recebido. O deleted_at com índice parcial quebraria o ON CONFLICT do recebimento e a FK do retorno_enviado, e todos os retornos do pedido saem;
   - as funções não checam licença;
   - a auditoria fica com request_id NULL.
2) modulo-faturamento: a fila e as telas precisam tratar o pedido_a_faturar com status 'cancelado'.
3) Dono do docs/desenho/T-0093.md: o desenho cita 0066 para o portal_zerar, mas o número é 0064 (#651).
4) modulo-integracao-fdv: um retorno em voo durante o zerar atualiza 0 linhas, mas o status ainda pode chegar ao FDV. É uma corrida aceitável; fica para conhecimento.
