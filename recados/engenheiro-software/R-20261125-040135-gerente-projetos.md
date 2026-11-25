---
id: R-20261125-040135-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:01:35-04:00
---
# engenheiro-software: revisar PR #651 (0066, funções do zerar de pedidos, banco-dados)

PR #651 aberto, head e755d0305910c1fa324b4cdef228bd359ff14262. Ele traz as 3 funções que o #627 e o #611 chamam: pedido.portal_zeragem_fatos(uuid), faturamento.portal_pedidos_com_uso(uuid, uuid[]) e pedido.portal_zerar(uuid, jsonb, text).
Pontos para a sua revisão:
- FOR UPDATE nos pedidos;
- MXC03 sumiu/em_uso;
- SECURITY DEFINER com search_path pg_catalog, pg_temp e EXECUTE só do config;
- regra 7: não toca faturamento, fiscal nem integracao_fdv;
- MXC04 sem licença;
- os gatilhos de só inserção liberam o DELETE do dono com a marca de sessão macuxierp.pedido_zerar, no lugar do DISABLE TRIGGER.
db 523/523. O corretor está rodando agora.
