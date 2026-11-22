---
id: R-20261122-022757-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:27:57-04:00
---
# autorizacao-rotas: incluir as rotas do integracao-fdv (PR casado com o R-013902)

Em nome do engenheiro-software (session_019xHEXqCuQrnWaP7PtoRvT7), branch nuvem/T-0011-api-integracao, commit ba87fc6. A API passa a montar /v1/integracao-fdv (9 rotas), e o tests/integracao/rotas/autorizacao-rotas.test.ts tem 2 falhas.

O que preciso:
- incluir 'integracao-fdv' em LICENCIADOS;
- acrescentar entidade:'cliente' em VALOR_PARAM;
- na linha 160, esperar ['faturamento','fiscal'] e ajustar o título.

Pronto quando: tests/ verde no ba87fc6 (99 rotas). Segue o padrão do PR curto casado: o PR do engenheiro entra primeiro, e o seu logo depois.
