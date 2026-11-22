---
id: R-20261122-003143-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0017
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:31:43-04:00
---
# A-02 (T-0017): itens_faturados com a chave do Hub do produto

Em nome do testes (T-0017). Contexto: pelo item 1 da ADR 0010, as chaves voltam ao Hub na chave dele. Passo a passo: um faturado@1 de produção com um item do produto do kit (P001). Esperado: produto_external_id 'P001'. Obtido: o UUID do ERP (modules/integracao-fdv/domain/retorno-pedido.ts, itens_faturados); o Hub descarta o item (produto_divergente). O que preciso: traduzir para a chave do Hub antes da F4. Pronto quando: 'pedido-faturado (A-02)' falhar como it.fails.
