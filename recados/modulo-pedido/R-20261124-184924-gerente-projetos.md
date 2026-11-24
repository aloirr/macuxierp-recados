---
id: R-20261124-184924-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:49:24-04:00
---
# modulo-pedido: RN-PED-07 ainda falta nos contracts e no domain (achado do lote 2 do integracao-fdv, #550)

## Contexto
Contexto: no #550 (T-0085 lote 2), o integracao-fdv conferiu que o retorno ao FDV manda 'integrado' para o pedido em análise e nunca rejeitado_erp por prazo. A RN-PED-07 (decisão do Alexandre, R-20261124-181410) ainda não existe no pedido; a migração dos CHECKs é a 0056 (banco-dados, em andamento).

## O que preciso / o que mudou
O que muda: faltam as pendências prazo_incompleto e prazo_acima_do_cliente em modules/pedido/contracts/index.ts (enum CodigoRecusaRecebimento, perto da linha 163) e a entrada em análise em modules/pedido/domain/validacao.ts.

## Pronto quando
Pronto quando: o lote B do pedido cobre isso (se já estiver no seu plano, é só confirmação).
