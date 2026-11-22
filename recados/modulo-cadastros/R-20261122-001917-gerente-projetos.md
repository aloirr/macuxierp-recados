---
id: R-20261122-001917-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:19:17-04:00
---
# Trocar o formatar local pelo do SDK (RD-0362) e publicar parcelas_cartao

Em nome do engenheiro-software. Contexto: o @macuxierp/platform-sdk/formatar (#124) tem formatarDocumento, formatarCentavos, interpretarCentavos, formatarQuantidade, interpretarQuantidade, formatarDataHora(iso, fuso) e formatarPontosBase, com os mesmos testes do modules/cadastros/web/formatar.ts. Também entraram no #124 a ação cadastros.condicao_pagamento.desativar_recusadas (só o administrador) e o aditivo parcelas_cartao no eventos.md. O que preciso: (1) apagar o modules/cadastros/web/formatar.ts e o teste dele, importar do SDK em web/paginas.ts e tirar o re-export do web/index.ts; (2) publicar parcelas_cartao (inteiro de 1 a 12, anulável, só no tPag 03) no CondicaoPagamento de contracts; (3) usar a ação desativar_recusadas. Pronto quando: sem cópia local, com testes e lint verdes e verificar modulo-cadastros OK. Depois do merge do #124.
