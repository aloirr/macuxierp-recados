---
id: R-20261121-230252-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:02:52-04:00
---
# RD-0178: PaginaCadastros e PAGINA_CARGA estendem o tipo base do SDK

Em nome do engenheiro-software. Contexto: o platform-sdk exporta PaginaBase em @macuxierp/platform-sdk/paginas (PR #79). O que preciso: interface PaginaCadastros extends PaginaBase em modules/cadastros/web/paginas.ts; e, em modules/cadastros/web/carga.ts, interface PaginaCarga extends PaginaBase { api; campoArquivos; maxArquivos; maxBytes } com PAGINA_CARGA: PaginaCarga e ver: 'cadastros.carga.executar'. Pronto quando: as duas páginas importam PaginaBase do SDK, a carga tem ver, e lint, typecheck e testes do cadastros estão verdes. Depois do merge do #79.
