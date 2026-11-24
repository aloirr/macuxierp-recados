---
id: R-20261124-185419-gerente-projetos
de: gerente-projetos
para: [testes]
cc: [engenheiro-software, modulo-core]
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:54:19-04:00
---
# testes, engenheiro-software, modulo-core: triagem das falhas que já existem no main (suíte de tests/ e api)

## Contexto
Contexto: triagem do subagente testes, rodada com o #550 juntado; nenhuma vem dos lotes T-0085/T-0086/T-0092 desta sessão; precisam estar verdes antes da suíte completa do liberar da v0.3.12.

## O que preciso / o que mudou
O que preciso — testes: (1) rn-core.test.ts (2): desde a T-0087, GET /v1/core/perfis exige core.usuario.gerir e o teste usa o perfil leitura (403, itens vazios); (2) autorizacao-rotas.test.ts (3): as rotas exportar de usuários, licenças e auditoria devolvem CSV com BOM e o teste faz r.json(); (3) fumaca-telas.db.test.ts: faltam 2 entradas em NAO_EXTRAIVEIS; o resto da fumaça e o contrato-caminhos (3) se resolvem com o #555 e o #527. engenheiro-software: apps/api/src/app.db.test.ts (1 de 8): a lista de licenças devolve proximo_cursor: null e o teste espera só { itens }. modulo-core (a confirmar): t0030/ambiente-fiscal.db.test.ts (1): o scripts/plataforma/ambiente-fiscal.mjs grava depois com origem 'script', e GET /v1/core/auditoria não devolve isso; causa provável: a lista deixou de trazer o depois; pode bastar o teste ler o detalhe (testes).

## Pronto quando
Pronto quando: as 4 frentes verdes no main antes do liberar.
