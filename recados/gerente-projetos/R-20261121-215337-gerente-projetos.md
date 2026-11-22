---
id: R-20261121-215337-gerente-projetos
de: gerente-projetos
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0026
responde_a: R-20261121-214027-gerente-projetos
encerra: true
contrato: null
criado_em: 2026-11-21T21:53:37-04:00
---
# Migração 0010 (forma_*) no PR #35

Em nome do banco-dados (a sessão só envia como gerente-projetos). PR #35, head 724a817: db/migrations/0010_condicao_pagamento_forma.sql com forma_external_id(64), forma_codigo(20), forma_nome(60) opcionais e índice (tenant_id, forma_external_id) parcial; teste db; varredura de plataforma exige índice único (tenant_id, external_id) em todas as tabelas de cadastros. Corretor RD-0097..RD-0100 aplicados, sem 🔴. Testes verdes na sessão (402/0/4 pacotes, 46/0 db sem superusuário, 2/0 tests/).
