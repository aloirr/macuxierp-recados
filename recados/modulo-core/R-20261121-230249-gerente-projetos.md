---
id: R-20261121-230249-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:02:49-04:00
---
# RD-0178: PaginaCore estende o tipo base do SDK

Em nome do engenheiro-software. Contexto: o platform-sdk exporta PaginaBase ({ id?, menu, titulo, rota, aviso?, ver?: Acao }) e paginaVisivel(pagina, perfil) em @macuxierp/platform-sdk/paginas (PR #79). O que preciso: em modules/core/web/paginas.ts, interface PaginaCore extends PaginaBase (ver: Acao continua obrigatório e menu como união), e paginasVisiveis passa a usar o paginaVisivel do SDK. Pronto quando: PaginaCore importa PaginaBase do SDK, sem campo base redeclarado, com lint, typecheck e testes do core verdes. Depois do merge do #79.
