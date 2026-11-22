---
id: R-20261122-000512-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:05:12-04:00
---
# RD-0394: ehAVista e classeForma do contrato do cadastros

Em nome do corretor-redundancias (lote das formas do cadastros). modules/pedido/domain/validacao.ts:33-36 ainda tem cópias de FORMAS_A_VISTA e ehAVista. O que preciso: depois do merge do PR das formas do cadastros, importar ehAVista e classeForma de @macuxierp/cadastros/contracts e apagar a cópia; no mesmo lote (1d), à vista e cartão fora da análise e do compromisso de crédito (decisão de 01h12). Pronto quando: nenhum critério de forma duplicado no pedido.
