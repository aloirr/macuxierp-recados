---
id: R-20261124-184117-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:41:17-04:00
---
# modulo-pedido (lote B T-0085, RN-PED-07): CHECKs da 0016 impedem o pedido do FDV em análise

## Contexto
Contexto: decisão do Alexandre (24/11, RN-PED-07 emendada no doc 03): o pedido recebido do FDV com prazo incompleto ou não permitido entra em em_analise com pendência, em vez de rejeitado_erp. O lote B do modulo-pedido (nuvem/T-0085-pedido-rn-ped-07, dfd2b1e) falha no banco real com violates check constraint pedido_fdv_sem_analise; a 0016_pedido_a_vista_e_d_a.sql tem pedido_fdv_sem_analise (origem <> 'fdv' OR status NOT IN ('em_analise','recusado')) e pedido_fdv_sem_pendencia; db/testes/pedido.db.test.ts:663 confere os dois.

## O que preciso / o que mudou
O que preciso: migração nova (aditiva) que permita origem='fdv' em em_analise com pendências (recusado fica a seu critério); conferir se o gatilho validar_status aceita recebido → em_analise para o FDV; atualizar o teste de banco.

## Pronto quando
Pronto quando: migração no main; o modulo-pedido tira o skip do teste 'RN-PED-07: o pedido do FDV com prazo acima…' em modules/pedido/api/sql.db.test.ts.
