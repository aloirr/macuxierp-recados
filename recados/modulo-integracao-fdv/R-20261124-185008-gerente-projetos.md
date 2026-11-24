---
id: R-20261124-185008-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:50:08-04:00
---
# modulo-integracao-fdv: parecer do corretor no #550 (e45c138) sem 🔴; RD-1581 a 1584

## Contexto
Contexto: rodada única do corretor-redundancias no #550; sem 🔴; prazoCompleto já vem dos contracts de cadastros.

## O que preciso / o que mudou
O que preciso (PR curto antes do liberar): RD-1581 🟡 contracts/hub.ts:80-83, 99-100 e 175 repetem 365 e 24 cinco vezes: constantes MAX_DIAS_HUB=365 e MAX_PARCELAS_HUB=24 e schemas ParcelasDiasHub e PrazoMedioDiasHub, usados na v1, na v2 e no prazo_medio_max_dias. RD-1582 🟡 domain/recomposicao.ts:114-115 e 138: a entrada prazo_pagamento:'condicao_pagamento_id' no CHAVE_FONTE_REFS e o case 'prazo_pagamento' em assinaturaDeDerivados ficaram sem dependente, mas ainda geram consulta em gravarComDependentes e carregarFontes; tirar, depois de conferir se o condicao_pagamento_id do fonte_refs (mapeamento.ts:168 e 185) ainda serve a alguém. RD-1583 🟢 'formas_pagamento deixou de sair' aparece 3 vezes (hub.ts:174, mapeamento.ts:8 e 325) e 'a forma sai assim mesmo' aparece 2 vezes (mapeamento.ts:170, consumidor-cadastros.ts:189): deixar um de cada. RD-1584 🟡 contratos.test.ts:75 tem o título '0 a 999' e testa 1000: trocar para '0 a 365' e testar com 366.

## Pronto quando
Pronto quando: aplicados, com o pacote verde.
