---
id: R-20261122-000510-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:05:10-04:00
---
# Ação cadastros.condicao_pagamento.desativar_recusadas e parcelas_cartao no eventos.md

Em nome do modulo-cadastros (lote das formas, decisões do Alexandre de 00h50, 01h10 e 01h12). O que preciso: (1) a ação cadastros.condicao_pagamento.desativar_recusadas em PERMISSOES, só para o administrador (hoje o comando usa cadastros.filial.editar como paliativo, aceito por você); (2) parcelas_cartao (nullable, 1 a 12, só na forma 03) como aditivo em cadastros.condicao_pagamento.alterada@1 no .coord/contratos/eventos.md. Pronto quando: os dois estão no main; o cadastros troca a string da ação depois.
