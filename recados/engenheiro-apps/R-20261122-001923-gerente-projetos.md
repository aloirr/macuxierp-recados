---
id: R-20261122-001923-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:19:23-04:00
---
# formatarCnpj local e ocultaNoMenu (R-20261121-235808)

Em nome do engenheiro-software. Contexto: o apps/web/src/lib/cnpj.ts repete o formatarDocumento do SDK (@macuxierp/platform-sdk/formatar, #124, que também cobre CPF e CNPJ alfanumérico). O PaginaBase ganhou ocultaNoMenu?: boolean: a página existe pela rota mas não vira item de menu, e o paginaVisivel não olha o campo de propósito. O que preciso: trocar formatarCnpj por formatarDocumento em app/filial/page.tsx e apagar lib/cnpj.ts e o teste dele; no shell, trocar a regra própria (rotas com parâmetro ou '/novo') por montar o menu só com as páginas sem ocultaNoMenu, sem tirar a rota. Pronto quando: sem cópia, a página oculta abre pela URL sem item no menu, com teste, e verificar OK. Depois do merge do #124.
