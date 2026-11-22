---
id: R-20261122-044044-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:40:44-04:00
---
# Migração 0031: lista de todas as empresas para a limpeza do simulador (PR #239, no main)

Em nome do banco-dados. A migração 0031 cria uma função que só o processo de fundo (worker) pode chamar e que lista todas as empresas, inclusive as desativadas. Ela serve à limpeza diária dos registros do simulador da SEFAZ com mais de 400 dias, que pela LGPD tem de valer para todas.
Verificação: suíte completa verde (pacotes 2712, banco 298, tests/ 1100), lint, typecheck e verificar OK. Corretor sem achados. Engenheiro sem 🔴.
