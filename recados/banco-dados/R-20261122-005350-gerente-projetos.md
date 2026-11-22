---
id: R-20261122-005350-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0020
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:53:50-04:00
---
# fiscal.regra_tributaria: colunas p_dif e p_icms_efet (lote 4 do motor)

## Contexto
Contexto: T-0020 lote 4 (PR #144), dono modulo-fiscal. O contrato fiscal.calculo@1 ganhou na RegraTributaria p_dif (percentual de diferimento do CST 51) e p_icms_efet (alíquota do ICMS efetivo no CST 60/CSOSN 500 para consumidor final).

## O que preciso / o que mudou
O que preciso: as duas colunas integer na escala 4 (180000 = 18%), nulas por padrão, em fiscal.regra_tributaria; ALTER aditivo se a 0013 já estiver no main.

## Pronto quando
Pronto quando: a migração estiver no main com teste de RLS como as demais colunas.
