---
id: R-20261122-062008-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: [modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:20:08-04:00
---
# Migração 0032 (v0.2.1): faturamento.filial_contingencia e EPEC na nota

Migração 0032 reservada para o lote 4 do faturamento (contingência, v0.2.1). O PR fica aberto e sem merge até o liberar da v0.2.0.
- Tabela faturamento.filial_contingencia: filial_id, modalidade, x_just, dh_cont, ativa, ligada_por, desligada_em, mais as colunas padrão (id, tenant_id, created_at, updated_at, deleted_at, external_id). Um registro ativo por filial (índice único parcial). RLS padrão e GRANTs do app e do worker como nas outras tabelas do faturamento.
- Na nota: epec_protocolo e epec_autorizada_em.
Os detalhes (CHECK da modalidade, x_just de 15 a 256 caracteres) estão no desenho docs/modulos/faturamento/contingencia.md do branch nuvem/T-0021-faturamento-contingencia. Combine direto com o faturamento. Corretor: use a faixa RD-0797–0806 combinada com o faturamento, ou peça outra ao gerente.
