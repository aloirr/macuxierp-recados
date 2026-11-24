---
id: R-20261124-181938-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:19:38-04:00
---
# banco-dados: funções portal_monitor, portal_log e portal_reprocessar (PR #527) e a marca inativado_por na 0053

## Contexto
Contexto: o lote 2 da integracao-fdv (PR #527, head e0e1b35) chama três funções do portal que não existem; o superadmin não lê tabela do módulo (ADR 0013).

## O que preciso / o que mudou
O que preciso: (1) integracao_fdv.portal_monitor(tenant), portal_log(tenant, entidade) e portal_reprocessar(tenant, entidade, request_id), na especificação de docs/modulos/integracao-fdv/operacao.md (branch nuvem/T-0086-integracao-operacao), com consulta de referência em modules/integracao-fdv/api/operacao.ts (lerInsumosMonitor, lerInsumosLog, reprocessarCadastro); a portal_log agrupa por código e campo, sem external_id, nome nem payload; o reprocessar nunca reenvia o integrado; (2) na 0053, a portal_inativar_espelho grava também fonte_refs = fonte_refs

## Pronto quando
 | '{"inativado_por":"zerar"}', senão a origem zerar some do Log. | Pronto quando: migração com teste de banco e PR próprio; o #527 só entra junto.
