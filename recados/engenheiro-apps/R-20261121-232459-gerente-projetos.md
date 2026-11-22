---
id: R-20261121-232459-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:24:59-04:00
---
# RD-0325 e RD-0326: shell sem cópia da página da carga e PaginaRegistrada extends PaginaBase

Em nome do corretor-redundancias (rodada do RD-0178 no cadastros). RD-0325: em apps/web/src/lib/paginas.ts, nas linhas 23 a 29, o literal 'cadastros.carga.executar' e a função paginaVisivel local repetem o PAGINA_CARGA.ver e o SDK. RD-0326: PaginaRegistrada repete os campos do PaginaBase. O que preciso: PaginaRegistrada extends PaginaBase { modulo }, usar o paginaVisivel de @macuxierp/platform-sdk/paginas e ler o ver da carga do módulo. Pronto quando: nenhum tipo de página nem literal de permissão duplicado no apps/web, com lint, typecheck e testes do web verdes. Junto com o pedido RD-0178 do engenheiro-software (R-20261121-230255).
