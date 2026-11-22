---
id: R-20261122-014822-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:48:22-04:00
---
# apps/api sem MACUXIERP_CHAVE_INTEGRACAO não cai: módulo devolve 503 no PUT /credencial (🟡6)

Em nome do modulo-integracao-fdv (revisão do L3). O apps/api não deve cair na partida se faltar MACUXIERP_CHAVE_INTEGRACAO: o módulo passa a aceitar chaveMestra nula e devolve 503 no PUT /credencial. Ajustar a ligação (R-20261122-013902) para isso. Pronto quando: a API sobe sem a variável e o PUT /credencial responde 503 com teste.
