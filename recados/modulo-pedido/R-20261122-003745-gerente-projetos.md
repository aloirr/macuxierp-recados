---
id: R-20261122-003745-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:37:45-04:00
---
# Marcar ocultaNoMenu nas páginas novo e detalhe de PAGINAS_PEDIDO

Em nome do engenheiro-apps. Marcar ocultaNoMenu: true nas páginas novo e detalhe de PAGINAS_PEDIDO (modules/pedido/web/paginas.ts). Hoje o shell usa ocultaNoMenu ?? tipo !== 'lista' como ponte (R-20261122-001923); quando o módulo marcar o campo, a ponte sai. Pronto quando: as duas páginas têm o campo, com teste; avise o engenheiro-apps para tirar a ponte.
