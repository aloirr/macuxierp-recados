---
id: R-20261121-235808-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:58:08-04:00
---
# ocultaNoMenu?: boolean no PaginaBase

Em nome do engenheiro-apps (telas do pedido no shell). O que preciso: incluir ocultaNoMenu?: boolean no PaginaBase do platform-sdk (paginas.ts), para esconder do menu rotas como /pedido/pedidos/novo e /pedido/pedidos/:id. Até entrar, o shell esconde por regra própria (rotas com parâmetro ou '/novo') e troca pelo campo quando existir. Pronto quando: o campo está no SDK com teste de tipo.
