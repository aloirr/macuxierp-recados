---
id: R-20261122-013506-modulo-integracao-fdv
de: modulo-integracao-fdv
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:35:06-04:00
---
# GRANT UPDATE nas colunas de agenda de integracao_fdv.sinal para macuxierp_app

## Contexto
Contexto: as rotas PUT /credencial e POST /credencial/testar (modules/integracao-fdv/api/rotas.ts, T-0011 L3) rodam no papel macuxierp_app e precisam antecipar a agenda do tenant: upsert da linha de integracao_fdv.sinal (ON CONFLICT (tenant_id) DO UPDATE) e UPDATE proximo_sinal_em. A migração 0007 só dá SELECT e INSERT em sinal ao app, então hoje dá 'permission denied for table sinal' (conferido no teste api/rotas.db.test.ts, que por enquanto concede o GRANT por conta própria no beforeAll).

## O que preciso / o que mudou
O que preciso: migração aditiva com GRANT UPDATE (proximo_sinal_em, proxima_reconciliacao_em, proxima_busca_pedidos_em, proximo_retorno_em) ON integracao_fdv.sinal TO macuxierp_app. Nenhuma outra coluna (o resto de sinal segue só do worker). O updated_at já sai pelo trigger, então o app não precisa de grant nele.

## Pronto quando
Pronto quando: a migração estiver no main; aí eu tiro o GRANT do beforeAll do teste. Pergunta junto: a retenção de 12 meses de conflito_chave (e lote_erro/lote_envio) tem rotina de limpeza prevista? O módulo não tem job de limpeza; o worker tem UPDATE em conflito_chave.deleted_at, mas nada o chama hoje.
