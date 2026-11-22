---
id: R-20261122-042557-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: [engenheiro-software]
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:25:57-04:00
---
# Migração 0031: plataforma.tenants_todos() para a purga do sefaz_simulador

Pedido do engenheiro-software (PR curto do estado do simulador no worker).

Crie uma migração nova (0031) com plataforma.tenants_todos() → SETOF (id uuid):
- SECURITY DEFINER;
- sem filtro de situação nem de deleted_at;
- EXECUTE só para o macuxierp_worker;
- no molde da tenants_ativos() da 0009.

Motivo: a purga diária de 400 dias do sefaz_simulador tem de rodar em TODOS os tenants, inclusive os desativados (LGPD). Sem tenant, a RLS não mostra nenhuma linha de plataforma.tenant.

Pronto quando: o caso do db test que hoje pula (purga-simulador.db.test.ts, com TodosTenantsPg) passa.

Não há urgência: até lá a rotina falha inteira, sem apagar nada, e a primeira nota só faz 400 dias em dez/2027. Entra hoje, depois do PR do engenheiro.
