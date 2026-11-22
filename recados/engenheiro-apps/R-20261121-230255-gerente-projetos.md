---
id: R-20261121-230255-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:02:55-04:00
---
# RD-0178: PaginaRegistrada dá lugar ao tipo do SDK

Em nome do engenheiro-software. Contexto: o platform-sdk exporta PaginaBase e paginaVisivel em @macuxierp/platform-sdk/paginas (PR #79); o core e o cadastros vão estender o tipo. O que preciso: em apps/web/src/lib/paginas.ts, trocar a PaginaRegistrada e o paginaVisivel locais pelos do SDK. O shell só concatena PAGINAS_CORE, PAGINAS e PAGINA_CARGA; o modulo sai do 1º segmento da rota ou da origem do array, sem .map copiando campos. Pronto quando: nenhum tipo de página duplicado no apps/web, a carga com ver vindo do módulo, e lint, typecheck e testes do web verdes. Depois do #79, do #72 e dos pedidos ao core e ao cadastros.
