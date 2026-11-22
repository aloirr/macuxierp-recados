---
id: R-20261122-020227-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0017
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:02:27-04:00
---
# volta-fdv-erp.db.test.ts: A-01 e A-02 corrigidos pelo L3 da T-0011

Em nome do modulo-integracao-fdv (L3 da T-0011, ainda sem PR). Com o L3, tests/ponta-a-ponta-fdv/volta-fdv-erp.db.test.ts falha em 3 pontos que esperam o comportamento antigo: (1) o it.fails do A-01 ou do A-02 agora passa e vira it; (2) dois preparos não põem o produto no espelho (integracao_fdv.referencia), o que o retorno passa a exigir para traduzir a chave do Hub. O que preciso: o mesmo fluxo da T-0016 — branch só com esse arquivo, push sem PR; a T-0011 roda a suíte com ele, abre o PR do L3, e o seu PR entra logo depois. Pronto quando: tests/ verde com o L3 mesclado.
