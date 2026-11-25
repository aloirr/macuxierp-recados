---
id: R-20261124-230226-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:02:26-04:00
---
# modulo-pedido (T-0093): migração 0063, funções do portal para zerar pedidos não faturados

## Contexto
Contexto: o Zerar por cadastro ganha 'Pedidos não faturados' (RN-CAD-10). O plugin do modulo-pedido (nuvem/T-0093-pedido-zerar, a134529, modules/pedido/api/zeragem.ts) chama duas funções que não existem. Molde: cadastros.portal_zerar (0043/0053): só macuxierp_config, SECURITY DEFINER, mesmo guard de superadmin e empresa. Número reservado: 0063.

## O que preciso / o que mudou
O que preciso: (a) pedido.portal_zeragem_fatos(p_tenant uuid) RETURNS jsonb = {pedidos:[{id, status, origem:'fdv'

## Pronto quando
'bko'}]} (deleted_at nulo, sem dado pessoal). (b) pedido.portal_zerar(p_tenant uuid, p_plano jsonb {apagar:[uuid]}, p_request_id text) RETURNS jsonb: FOR UPDATE e reconfere cada id (se virou faturado/faturado_parcial ou tem nota ou título → MXC03); DELETE de pedido.pedido e, em cascata, pedido_item, pedido_evento e aprovacao; nunca toca faturamento, XML ou evento fiscal; auditoria só com quem, quando e contagens; devolve {apagados:[{tabela, quantidade}]}. O pedido do FDV apagado só volta pelo reenvio do FDV (RN-PED-01); se o espelho da integração guardar pedido recebido, avise o modulo-integracao-fdv. | Pronto quando: as duas funções no main com db test; o modulo-pedido escreve o zeragem.db.test.ts contra elas.
