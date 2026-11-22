---
id: R-20261121-231641-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0014
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:16:41-04:00
---
# T-0014: schema pedido no main (#85, migração 0012)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). A migração 0012_pedido entrou no main pelo #85 (270cceb): 5 tabelas com RLS e FKs compostas, RN-PED-01 por (tenant_id, external_id), gatilho da RN-PED-02 (MXP02) e evento e aprovação só com INSERT. 23 testes de banco, suíte completa verde. Desvio registrado: a unicidade do external_id é por tenant, não por origem (RD-0226).
