---
id: R-20261124-211602-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:16:02-04:00
---
# modulo-cadastros (365/24): hub.ts importa MAX_DIAS e MAX_PARCELAS do cadastros

## Contexto
Contexto: a RN-CAD-15 (emendada no #572) fixou 365 dias e 24 parcelas. Decisão do gerente: a fonte única passa a ser MAX_DIAS e MAX_PARCELAS de @macuxierp/cadastros/contracts (PR do modulo-cadastros, branch nuvem/T-0085-cadastros-365-24-telefone, head 4d38700).

## O que preciso / o que mudou
O que preciso: em modules/integracao-fdv/contracts/hub.ts:46-47, trocar MAX_DIAS_HUB = 365 e MAX_PARCELAS_HUB = 24 pelo import dessas duas constantes (depois do merge do PR do cadastros) e ajustar os testes que citam 365 e 24 soltos.

## Pronto quando
Pronto quando: hub.ts sem 365/24 declarados; typecheck e testes do integracao-fdv verdes.
