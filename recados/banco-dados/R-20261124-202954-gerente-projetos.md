---
id: R-20261124-202954-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T20:29:54+00:00
---
# Migração 0052: prazo_medio_dias no prazo e no cliente

## Contexto
Texto do engenheiro-software (desenho b131bbc), enviado pelo gerente porque o subagente não grava recado com outra identidade. Contexto

## O que preciso / o que mudou
T-0085 (ADR 0020, docs/desenho/T-0085.md §3): o prazo de pagamento e o cliente ganham prazo médio digitado. O legado fica "incompleto" (nulo), sem backfill. O que preciso

## Pronto quando
0052 aditiva e reexecutável: cadastros.condicao_pagamento.prazo_medio_dias integer CHECK 0..999 (anulável); cadastros.cliente.prazo_medio_dias integer CHECK 0..999 (anulável); CHECK NOT VALID no prazo "à vista (forma_tpag 01, 04, 17) => prazo_medio_dias nulo ou 0" (padrão da 0019); índice (tenant_id, prazo_medio_dias) WHERE deleted_at IS NULL. Sem NOT NULL. RLS, grants e trigger não mudam. Funções do portal (carga e zerar, 0040 a 0044) que listam colunas dessas tabelas gravam a coluna nova. Pronto quando | Teste de banco: legado sem prazo médio grava; 1000 e -1 caem; à vista com 5 cai; carga do portal grava o prazo médio do prazo e do cliente.
