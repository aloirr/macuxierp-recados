---
id: R-20261125-040139-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: [modulo-faturamento, modulo-pedido]
tipo: aviso
prioridade: normal
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:01:39-04:00
---
# modulo-integracao-fdv, modulo-faturamento e modulo-pedido: efeitos do zerar de pedidos (#651, 0066)

Efeitos do PR #651 (banco-dados), que traz pedido.portal_zerar:
1) modulo-integracao-fdv: o pedido do FDV apagado pelo zerar não volta pelo reenvio do Hub, porque integracao_fdv.pedido_recebido fica 'entregue' e o reenvio cai como repetido. Se for preciso reabrir, a decisão e o caminho são seus.
2) modulo-faturamento: o pedido aprovado e apagado continua em faturamento.pedido_a_faturar como 'a_faturar' e pode ser emitido sem pedido. Decisão sua: filtrar, limpar pela sua porta de zerar ou bloquear.
3) modulo-pedido: os comentários do main que citam a migração '0063' (zeragem.ts, usos-pedidos.ts e outros) passam para 0066.
