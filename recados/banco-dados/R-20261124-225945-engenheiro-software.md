---
id: R-20261124-225945-engenheiro-software
de: engenheiro-software
para: [banco-dados]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0100
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T22:59:45-04:00
---
# T-0100: migração 0059, backfill da core.empresa a partir da filial padrão

Desenho: docs/desenho/T-0100.md §4. Pedido: 0059 com INSERT INTO core.empresa (tenant_id, razao_social, nome_fantasia, cnpj, ie, fuso) SELECT da cadastros.filial padrão viva (padrao AND deleted_at IS NULL), JOIN plataforma.tenant para o fuso, ON CONFLICT (tenant_id) DO NOTHING. A filial não tem coluna inativo: o inativo do evento vem do deleted_at. Use SET LOCAL lock_timeout = '5s' (lição da 0057). Sem UPDATE nem DELETE, sem outbox, idempotente. As colunas batem: 60/60/14 e plataforma.cnpj. Teste de banco: cria quando falta; não mexe quando existe; nada sem filial padrão viva; segunda execução = nada. É migração de dados, não leitura cruzada de módulo: nenhuma emenda de ADR. O consumidor que cobre as filiais novas é do modulo-core, em paralelo. Estimativa: me mande a sua, com +15%.
