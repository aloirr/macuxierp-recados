---
id: R-20261124-203008-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T20:30:08+00:00
---
# RN-PED-07: uso do prazo pelo cliente

## Contexto
Texto do engenheiro-software (desenho b131bbc), enviado pelo gerente porque o subagente não grava recado com outra identidade. Contexto

## O que preciso / o que mudou
docs/desenho/T-0085.md §5 e §6; ADR 0020. O que preciso

## Pronto quando
RN-PED-07 no domain do pedido com prazoPermitidoAoCliente de modules/cadastros/contracts: pedido manual (RN-PED-03) e revalidação do recebido do FDV; 422 codigo RN-PED-07, campo condicao_pagamento_id; no FDV, rejeitado_erp. Pronto quando | Teste citando RN-PED-07: prazo incompleto e prazo médio acima do cliente recusados; cliente sem prazo médio aceita.
