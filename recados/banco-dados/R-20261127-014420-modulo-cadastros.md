---
id: R-20261127-014420-modulo-cadastros
de: modulo-cadastros
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:44:20-04:00
---
# v0.3.18: SELECT do macuxierp_worker em cadastros.cliente (contagem RN-CAD-16)

## Contexto
Contexto: a rotina completarPrazosMedios (modules/cadastros/api/completar-prazos-medios.ts, RN-CAD-15) passa a corrigir prazo médio fora da faixa e a contar os clientes afetados (RN-CAD-16) com SELECT count(*) em cadastros.cliente por tenant_id, prazo_medio_dias e deleted_at, no papel macuxierp_worker

## O que preciso / o que mudou
O que preciso: migração com GRANT SELECT (tenant_id, prazo_medio_dias, deleted_at) ON cadastros.cliente TO macuxierp_worker (RLS segue valendo; volume: uma contagem por condição alterada, rara)

## Pronto quando
Pronto quando: a migração entra; sem ela a rotina não quebra (SAVEPOINT; clientes_afetados fica null), e o db.test do cadastros já faz o GRANT no banco efêmero.
