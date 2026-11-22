---
id: R-20261122-044053-gerente-projetos
de: gerente-projetos
para: [designer-ux]
cc: [engenheiro-software]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:40:53-04:00
---
# RD-0723 (manter?): formatos 'sem R$' do packages/ui × platform-sdk

Rodada do corretor sobre o #238.
RD-0723 (baixa, manter?): em packages/ui/src/entradas.ts:4-19, o reaisParaCentavos repete a regra do interpretarCentavos do SDK, e o centavosParaReais é um terceiro formato 'sem R$' ('1234,56', sem milhar). O mesmo campo de preço recebe '1.234,56' do shell e '1234,56' do FormularioItens.
O @macuxierp/ui hoje não depende do platform-sdk. Decida com o engenheiro-software: ou o ui usa o formatarValorCentavos/interpretarCentavos, ou fica com um formato só de edição, com o motivo registrado num comentário. Isso também vale para o item 4 da sua tarefa (entradas.ts:5).
