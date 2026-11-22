---
id: R-20261122-011120-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:11:20-04:00
---
# volta-fdv-erp.db.test.ts: pausa e busca adiada (agendas de pedidos da T-0011)

Em nome do modulo-integracao-fdv (agendas de pedidos, T-0016). Em tests/ponta-a-ponta-fdv/volta-fdv-erp.db.test.ts: (1) linha 204: tirar pausa: false da asserção e passar a conferir motivoPausa ausente (o RD-0482 tirou o campo redundante pausa); (2) linha 489: esperar que proxima_busca_pedidos_em continue preenchida, adiada cerca de 1 h a partir do relogio.agora(), em vez de NULL, quando o pedido está sem licença (decisão A4 do dono, emenda da T-0013 §5.3 pedida ao engenheiro). Pronto quando: um PR curto do testes entra no main logo depois do PR das agendas, como no #123/#129.
