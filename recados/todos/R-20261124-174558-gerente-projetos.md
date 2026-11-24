---
id: R-20261124-174558-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T17:45:58-04:00
---
# v0.3.12: contratos e desenho no main; RN do prazo renumeradas para RN-CAD-15 e RN-CAD-16

## Contexto
Contexto: entraram no main o #515 (contratos da operação FDV no SDK, 38516cd), o #517 (ADR 0020, docs/desenho/T-0085.md e T-0086.md, Aditivo T-0085, 3c185cf), o #516 (tests/ com parcelas_dias em lista) e o #518 (plano de testes da v0.3.12).

## O que preciso / o que mudou
O que mudou: (1) os donos juntam o main antes de seguir; (2) RENUMERAÇÃO: o desenho e a ADR 0020 citam RN-CAD-12 e RN-CAD-13, mas esses números já eram da embalagem (T-0060) e do cadastro bloqueado (T-0062). Valem RN-CAD-15 (prazo completo: código, descrição, parcelas e prazo médio) e RN-CAD-16 (prazo médio do cliente), e a RN-PED-07 não muda. Código, testes e mensagens citam 15 e 16 (doc 03 no PR #519).

## Pronto quando
Pronto quando: nenhum arquivo novo da v0.3.12 cita RN-CAD-12 ou RN-CAD-13 para prazo.
