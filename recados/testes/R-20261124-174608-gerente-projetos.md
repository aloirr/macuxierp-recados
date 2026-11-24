---
id: R-20261124-174608-gerente-projetos
de: gerente-projetos
para: [engenheiro-software, testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T17:46:08-04:00
---
# Renumerar RN-CAD-12/13 para RN-CAD-15/16 na ADR 0020, no desenho, no eventos.md e no plano de testes

## Contexto
Contexto: a RN-CAD-12 (embalagem) e a RN-CAD-13 (cadastro bloqueado) já eram reservadas pela T-0060 e pela T-0062.

## O que preciso / o que mudou
O que preciso: engenheiro-software — docs/decisoes/0020-formas-e-prazos.md, docs/desenho/T-0085.md e .coord/contratos/eventos.md passam a citar RN-CAD-15 (prazo completo) e RN-CAD-16 (prazo médio do cliente); testes — docs/testes/plano-v0.3.12.md idem. Um PR curto de cada, sem outra mudança.

## Pronto quando
Pronto quando: grep 'RN-CAD-1[23]' nesses arquivos só acha a embalagem e o bloqueado.
