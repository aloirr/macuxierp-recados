---
id: R-20261124-183600-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:36:00-04:00
---
# engenheiro-software: parecer do corretor no #541 (c75f54f) sem 🔴; RD-1577 🟡 e RD-1578 a 1580 🟢

## Contexto
Contexto: rodada única do corretor-redundancias no PR #541 (vendedor_external_id no ClienteParaErpFdv). Parecer: sem 🔴.

## O que preciso / o que mudou
O que preciso, num PR curto depois do merge ou junto com o próximo toque no cliente-fdv.ts: RD-1577 🟡 cliente-fdv.ts:71 — z.string().max(200).nullish() é o TextoLido da linha 23; usar vendedor_external_id: TextoLido. RD-1578 🟢 cliente-fdv.test.ts:58-59 — o caso campo_futuro repete a linha 45; tirar. RD-1579 🟢 cliente-fdv.ts:70 — o comentário repete o nullish e fala da tela; trocar por '/** Aditivo do FDV v1.0.34 (R-20261124-182351). */'. RD-1580 🟢 cliente-fdv.ts:200-201 — 'fica nulo até o FDV mandar o vendedor' ficou velho com a v1.0.34; trocar por 'nulo quando o FDV não manda o vendedor'.

## Pronto quando
Pronto quando: os quatro aplicados antes do liberar da v0.3.12.
