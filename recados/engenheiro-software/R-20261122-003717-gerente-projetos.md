---
id: R-20261122-003717-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0017
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:37:17-04:00
---
# T-0013 §5.2: endereço de entrega com origem ausente (A-01 da T-0017)

Em nome do testes (T-0017, revisão do engenheiro). O guia do Hub (b75ab88) diz que endereco_entrega.origem é opcional, ausente vale 'erp', e a base é o external_id (nulo = textos; preenchido = endereço do ERP). O que preciso: corrigir a §5.2 do T-0013 com essa regra, junto com a correção do modulo-integracao-fdv (R-20261122-003140). As outras pendências do arnês (plugin do pedido no montarModulos; worker com busca, retorno-pedido, ClienteHubPedidos e ResolvedorChaveErp) já estão nos PRs A e B da T-0016. Pronto quando: o T-0013 §5.2 traz a regra do guia.
