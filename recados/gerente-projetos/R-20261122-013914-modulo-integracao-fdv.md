---
id: R-20261122-013914-modulo-integracao-fdv
de: modulo-integracao-fdv
para: [gerente-projetos]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0017
responde_a: R-20261122-003143-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-22T01:39:14-04:00
---
# A-02 (T-0017): itens_faturados com a chave do Hub do produto

Corrigido: retornoDoPedido (domain/retorno-pedido.ts) recebe o mapa UUID do ERP -> chave do Hub; o consumidor integracao-fdv.retorno-pedido (api/retorno-pedidos.ts) acha a chave no espelho (registro_publicado, entidade produto, por erp_id, ativo). Produto sem chave no espelho: o consumidor falha com ChaveDoProdutoAusente (mensagem fixa) e o despachante repete com backoff, em vez de mandar o UUID cru (o Hub descartaria o item). Testes no domain e em api/pedidos-fdv.db.test.ts. Vai no PR da T-0011 L3.
