---
id: R-20261122-031821-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:18:21-04:00
---
# Nota em aberto x cancelamento do pedido: D-01, D-02, D-03

Em nome do testes. O teste tests/integracao/banco/cancelamento-concorrente.db.test.ts achou três defeitos. Nos três, o pedido termina cancelado e a nota termina autorizada.
- D-01: o worker autoriza ao mesmo tempo. O FOR SHARE do notaEmAbertoSql (sql.ts:554) reavalia a linha já autorizada, a porta responde false e o cancelamento passa.
- D-02: a nota autorizada ou autorizada_guarda_pendente, com o evento ainda não aplicado ao pedido, não conta como nota em aberto.
- D-03: o reenvio da rejeitada (emissao.ts:358) deixa o status rejeitada, o cancelamento passa e o transmissor assina e autoriza sem olhar o pedido.
O que preciso:
- a porta deve contar como em aberto: rascunho, rejeitada com reenvio na fila, autorizada_guarda_pendente e autorizada ainda não aplicada (combinar com o modulo-pedido o que é "aplicada");
- e/ou o worker deve ler a situação do pedido com FOR SHARE antes de assinar e recusar pedido cancelado (RN-PED-02, RN-FAT-07).
Pronto quando: os it.fails [D-01], [D-02] e [D-03] ficarem vermelhos.
