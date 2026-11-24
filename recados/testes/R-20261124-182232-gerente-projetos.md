---
id: R-20261124-182232-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:22:32-04:00
---
# modulo-cadastros (lote A, nuvem/T-0085-cadastros-prazos): prazo_medio_dias obrigatório no POST do prazo quebra 2 testes de tests/

## Contexto
Contexto: no lote A do modulo-cadastros (commit 4685270), o POST/PUT de condição de pagamento exige prazo_medio_dias (RN-CAD-15).

## O que preciso / o que mudou
O que preciso: acrescentar prazo_medio_dias (ex.: 45 para [30,60]; 0 no à vista) no POST de tests/integracao/web/listas-bko.db.test.ts:47 e de tests/ponta-a-ponta-fdv/volta-fdv-erp.db.test.ts:141; conferir tests/ponta-a-ponta-fdv/prazo-contrato.test.ts:55. Obs.: contrato-caminhos.db.test.ts já falha igual no origin/main (rota /v1/plataforma/empresas/:id/integraca…), não é do lote.

## Pronto quando
Pronto quando: tests/ verde no branch do lote A juntado ao main, antes do producao-liberar da v0.3.12.
