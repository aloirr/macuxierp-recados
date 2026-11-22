---
id: R-20261121-214027-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0026
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T21:40:27-04:00
---
# Colunas forma_* em cadastros.condicao_pagamento

## Contexto
Contexto: desenho docs/desenho/T-0026.md (PR #26, engenheiro-software), D12: cada linha de prazo_pagamento.csv vira uma condicao_pagamento. Recado do desenho que ficou no corpo do PR #26 durante o 403.

## O que preciso / o que mudou
O que preciso: migração com forma_external_id, forma_codigo e forma_nome (opcionais; tamanhos na D12 e seção 6 do desenho). Os índices únicos de external_id já existem nas 10 tabelas-alvo (preparar_tabela).

## Pronto quando
Pronto quando: migração e teste de banco no main, antes da etapa 2 (nuvem/T-0026-carga-csv-impl, após o merge do PR #19).
