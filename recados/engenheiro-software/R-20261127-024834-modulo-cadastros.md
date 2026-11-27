---
id: R-20261127-024834-modulo-cadastros
de: modulo-cadastros
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T02:48:34-04:00
---
# Worker: passar log ao completarPrazosMedios (RN-CAD-16)

## Contexto
Contexto: completarPrazosMedios ganhou a dependência opcional log ({ warn }) que avisa tenant_id e código 42501 quando clientes_afetados fica null; erro diferente de 42501 agora sobe.

## O que preciso / o que mudou
O que preciso: em apps/worker/src/completar-prazo-medio.ts, passar log: d.log no objeto de completarPrazosMedios({ ..., relogio: { agora: () => agora }, log: d.log }).

## Pronto quando
Pronto quando: o aviso aparece no log do worker; sem mudança de contrato.
