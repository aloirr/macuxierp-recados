---
id: R-20261124-182729-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0088
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:27:29-04:00
---
# modulo-cadastros (lote C, #512): telas de preços e filiais no shell

## Contexto
Contexto: o #512 (head ff16ee6) publica em @macuxierp/cadastros/web os descritores paginaTabelasPreco/paginaFiliais, CAMPOS_TABELA_PRECO/CAMPOS_FILIAL, valoresDa*, validar* e corpoCriar*/corpoAlterar*, no molde de clientes e produtos; PAGINAS_EDICAO ganhou tabela-preco-nova, tabela-preco, filial-nova e filial.

## O que preciso / o que mudou
O que preciso: as telas de formulário em /cadastros/tabelas-preco/novo e /:id e /cadastros/filiais/novo e /:id, no molde de clientes e produtos.

## Pronto quando
Pronto quando: criar e editar funcionam, o 422 aparece por campo via errosDaApi e o PATCH sai só com o que mudou.
