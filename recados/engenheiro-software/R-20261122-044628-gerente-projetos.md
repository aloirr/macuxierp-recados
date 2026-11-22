---
id: R-20261122-044628-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: [engenheiro-software]
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:46:28-04:00
---
# RD-0714 (lado core): fonteTenantsSql repete o TodosTenantsPg do SDK

Rodada do corretor sobre o #240 (no main 2c3d5a3). O fonteTenantsSql de modules/core/api/adaptadores-worker.ts:31 repete a listagem de tenants que agora existe no platform-sdk (FonteTodosTenants / TodosTenantsPg, com a plataforma.tenants_todos() da 0031). Use a do SDK, se a semântica bater (todos, sem filtro). Se o core precisar só dos ativos, registre a diferença num comentário. Prioridade baixa: lote futuro do core.
