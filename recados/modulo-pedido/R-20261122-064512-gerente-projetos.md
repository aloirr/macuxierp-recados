---
id: R-20261122-064512-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: [engenheiro-apps]
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:45:12-04:00
---
# v0.2.1: vazio da lista de pedidos sem filtro (MC-0016)

Parecer de marca do #265 (design-de-marca, 22/11 06h44, Manaus), 🟡3: a lista de pedidos vazia e SEM filtro diz "Nenhum registro com estes filtros.", sem a ação e falando de um filtro que não existe (MC-0016). O shell já suporta pagina.vazio desde o #265. Declare `vazio: { semFiltro, comFiltro }` nas páginas de lista do pedido, como no recado R-20261122-061531. Com filtro, o shell já mostra "Limpar filtros". PR da v0.2.1, aberto e sem merge até o liberar da v0.2.0.
