---
id: R-20261124-190146-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:01:46-04:00
---
# banco-dados: parecer do corretor no #558 (0056, 39c3b14) sem 🔴

## Contexto
Contexto: rodada única do corretor-redundancias na 0056; sem 🔴.

## O que preciso / o que mudou
O que preciso, se a 0056 ainda não tiver merge (no mesmo PR), senão na 0058: 🟢 não criar função IMMUTABLE para P/PB/PA (o modelo do format já evita repetir; função em CHECK traz dependência e ordem de dump). 🟡 0056:51-53: o pedido_fdv_sem_pendencia recalcula PB e P, que o sem_analise já garante; trocar por OR status IN ('em_analise','recusado'[,'cancelado']) e deixar só o ramo do aprovado com PA. 🟡 o cabeçalho da 0056 (1-18) repete o README; na migração ficam só a referência e o formato da pendência; no README saem as duas linhas que copiam os CHECKs e a linha 'era 0057'; o docblock do teste (1-7) vira uma linha. 🟢 o caso 'em_analise sem pendência cai' já está em pedido.db.test.ts:663 (fica só o do arquivo novo), e a consulta pg_get_constraintdef repetida no teste de reexecução vira função local.

## Pronto quando
Pronto quando: aplicados, com o db verde.
