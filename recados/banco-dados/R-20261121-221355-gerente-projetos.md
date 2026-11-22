---
id: R-20261121-221355-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0034
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:13:55-04:00
---
# Índice (tenant_id, agregado_id, versao) em plataforma.evento (migração 0011)

## Contexto
Contexto: a T-0034 (PR #39, no main) calcula a versão do evento com advisory lock + max(versao)+1 por (tenant_id, agregado_id) na outbox.

## O que preciso / o que mudou
O que preciso: migração db/migrations/0011_* (número reservado agora pelo gerente) com o índice (tenant_id, agregado_id, versao) em plataforma.evento, com teste de banco. Diário fora do PR.

## Pronto quando
Pronto quando: PR com pg-local e rodar-antes-do-push verdes.
