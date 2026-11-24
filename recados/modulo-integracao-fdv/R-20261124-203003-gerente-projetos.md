---
id: R-20261124-203003-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T20:30:03+00:00
---
# Hub: parcelas_dias em lista, prazo médio e contratos das telas

## Contexto
Texto do engenheiro-software (desenho b131bbc), enviado pelo gerente porque o subagente não grava recado com outra identidade. Contexto

## O que preciso / o que mudou
docs/desenho/T-0085.md §4 e docs/desenho/T-0086.md; ADR 0020. Contratos das telas no SDK: packages/platform-sdk/src/portal-integracao-operacao.ts (MonitorConectorFdv, situacaoConectorFdv, RespostaReprocessarFdv, REPROCESSAVEIS_FDV, LogCadastroFdvPlataforma, LogCadastroFdvTenant, CAMINHOS_INTEGRACAO_FDV_TENANT) e monitor/reprocessar/log em CAMINHOS_INTEGRACAO_FDV_PLATAFORMA. O que preciso

## Pronto quando
Lote 1 já: PrazoPagamentoHub.parcelas_dias = z.array(int 0..999).min(1).max(36); mapeamento.ts:177 manda a lista; leitores espelho.ts:124 e :178 e recomposicao.ts:123. Lote 2: descricao e prazo_medio_dias obrigatórios no prazo; prazo incompleto não sai; ClienteHub.prazo_medio_max_dias = cliente.prazo_medio_dias (nulo omite); formas_pagamento deixa de sair e sai do M10. T-0086: situação do registro e reprocessar no domain; rotas do /config e do BKO da tabela §1. Pronto quando | Testes com fixture do contrato do Hub; Reprocessar não reenvia integrado (domain e banco); log do /config sem dado de negócio.
