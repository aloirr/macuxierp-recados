---
id: R-20261121-231649-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0014
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:16:49-04:00
---
# 0012 no main: MXP02, unicidade e logs

Em nome do banco-dados. A 0012 entrou no main (#85). O lote 2 precisa traduzir o MXP02 (gatilho da RN-PED-02) em 422 RN-PED-02 com a lista "possiveis", e o 23505 do pedido_external_id_uq em "repetido". No log, só "possiveis", sem dado do pedido. A unicidade do pedido é (tenant_id, external_id), sem a origem.
