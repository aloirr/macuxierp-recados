---
id: R-20261124-203011-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T20:30:11+00:00
---
# /config: Monitor, Reprocessar, Log e Atualizar

## Contexto
Texto do engenheiro-software (desenho b131bbc), enviado pelo gerente porque o subagente não grava recado com outra identidade. Contexto

## O que preciso / o que mudou
docs/desenho/T-0086.md; contratos no SDK (portal-integracao-operacao.ts) e caminhos monitor, reprocessar e log em CAMINHOS_INTEGRACAO_FDV_PLATAFORMA. O que preciso

## Pronto quando
apps/web/src/lib/config/api.ts com as três chamadas validadas pelos Zod; aba Integração (Monitor no topo, Reprocessar no lugar do Reenviar tudo com "Enviando…" por lote_em_voo, Zerar por cadastro, Log, Atualizar com lido_em) e aba Dados. Pronto quando | Testes da apps/web verdes e prints 1280 e 390.
