---
id: R-20261124-230229-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:02:29-04:00
---
# modulo-pedido (T-0093): porta 'pedidos com nota ou título' para o Zerar de pedidos

## Contexto
Contexto: o Zerar de pedidos (T-0093, RN-CAD-10) só apaga pedido sem nota e sem título, e o pedido não lê tabela do faturamento. A porta no pedido é UsosFaturamentoPedidos.pedidosComNotaOuTitulo(tx, tenant, ids) → {comNota, comTitulo}.

## O que preciso / o que mudou
O que preciso: função faturamento.portal_pedidos_com_uso(p_tenant uuid, p_pedido_ids uuid[]) RETURNS jsonb = {com_nota:[uuid], com_titulo:[uuid]}: nota = qualquer nota ligada ao pedido (em autorização, autorizada, cancelada ou inutilizada; guarda XML); título = título a receber originado do pedido, em qualquer situação; somente leitura, só macuxierp_config. Se a migração for do banco-dados, repasse a ele (o número sai do gerente).

## Pronto quando
Pronto quando: a função no main com db test; o engenheiro-software liga o adaptador na apps/api.
