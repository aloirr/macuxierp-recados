---
id: R-20261122-010306-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:03:06-04:00
---
# Carga do forma_pagamento: validar inativas reativadas e traduzir 23514 para 422 (0019)

Em nome do banco-dados e do engenheiro-software (revisão da 0019). A carga do forma_pagamento (carga-entidades.ts:261 e :272-273) pula a validação das condições inativas, mas reativa todas com l.ativo=true. Com a 0019 (invariante estrita das parcelas do cartão, com exceção para linhas desativadas), se a condição for de cartão sem parcelas e tiver sido desativada pela limpeza, o reativar cai em 23514; o cadastros não traduz o 23514, então o lote aborta com 500 em vez de 422 RN-CAD-09. O que preciso: validar também as inativas que vão ser reativadas e traduzir o 23514 para 422 RN-CAD-09 (na carga e na API). Pronto quando: há teste de reativação de cartão sem parcelas devolvendo 422.
