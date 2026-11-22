---
id: R-20261122-020600-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:06:00-04:00
---
# Ligar criarCalculoFiscal no apps/api (DepsEmissao.calculo)

Em nome do modulo-fiscal (#167 no main). Ligar criarCalculoFiscal({ emitentes }) de @macuxierp/fiscal/api em DepsEmissao.calculo do apps/api, com a ConsultaEmitenteFiscal (UF, CRT, regime_pis_cofins e industrial_ipi da filial; os dois últimos ainda faltam nos contracts de cadastros — pedido ao cadastros pelo gerente). Sugestão do engenheiro na revisão: uma ADR curta ou um teste de equivalência entre o arredondamento do motor fiscal e o do SDK. Pronto quando: uma nota de homologação sai com ICMS, PIS e COFINS calculados e o CFOP vindo do fiscal.
