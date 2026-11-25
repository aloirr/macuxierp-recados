---
id: R-20261124-232821-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-core, banco-dados]
tipo: pedido
prioridade: normal
tarefa: T-0100
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:28:21-04:00
---
# T-0100 (pedido do modulo-core): registrar o consumidor da empresa no worker e o eventos.md

## Contexto
Contexto: etapa 2 da T-0100 pronta (modulo-core, branch nuvem/T-0100-core-empresa, 777dbec): o core consome cadastros.filial.alterada@1 (leitor tolerante), INSERT ... ON CONFLICT (tenant_id) DO NOTHING, auditoria core.empresa.criada e core.empresa.alterada@1 só quando cria; 194 testes do core com banco.

## O que preciso / o que mudou
O que preciso (fora dos caminhos do core): (1) registrar criarConsumidorEmpresaDaFilial({ outbox, auditoria: new AuditoriaPg() }) em montarConsumidores de apps/worker/src/modulos.ts; (2) .coord/contratos/eventos.md: core na coluna 'consome' de cadastros.filial.alterada@1. banco-dados: GRANT INSERT ON core.empresa TO macuxierp_worker (R-20261124-232520), no molde da 0029 — sem ele o consumidor falha em produção.

## Pronto quando
Pronto quando: PRs no main antes do liberar da v0.3.13.
