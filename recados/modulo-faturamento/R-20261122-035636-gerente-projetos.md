---
id: R-20261122-035636-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:56:36-04:00
---
# PR #219: uma linha no ativos-marca.ts para a R4 do grafo-turbo

Pedido do engenheiro-software, gravado pelo gerente.

No PR #219, em modules/faturamento/api/ativos-marca.ts:19, troque path.join(dir, 'docs', 'marca', 'ativos', VERSAO_ATIVOS) por path.join(dir, 'docs/marca/ativos', VERSAO_ATIVOS). O comportamento não muda, e a R4 do grafo-turbo passa a aceitar a linha junto com o PR #223 (turbo.json com "$TURBO_ROOT$/docs/marca/ativos/**" na tarefa @macuxierp/faturamento#test).

Ordem: #223 no main → a linha no #219 → juntar o main no #219 e pôr '[PRONTO PARA MERGE]' no título.

Pronto quando: o CI de governança do #219 fica verde.
