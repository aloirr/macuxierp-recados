---
id: R-20261124-232750-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: [engenheiro-software, modulo-core]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:27:50-04:00
---
# T-0101 (pedido do modulo-core): consulta CNPJ completa exposta em contracts

## Contexto
Contexto: a ficha da empresa pela Receita (T-0101, ADR 0012 emendada) reusa a consulta CNPJ do RF-CAD-02 por contracts. O SugestaoCnpj de hoje não traz CNAE secundário, porte, natureza jurídica, e-mail, telefone nem código IBGE. O modulo-core já tem o mapeamento da resposta (formato BrasilAPI) em modules/core/domain/ficha-receita.ts (branch nuvem/T-0101-core-ficha, 3cda4dd) e não pode importar cadastros/api.

## O que preciso / o que mudou
O que preciso: expor em modules/cadastros/contracts uma consulta CNPJ completa (ou a resposta bruta tipada) com esses campos, e a porta que o core chama pela API, com falha da fonte tratada. Sem dado pessoal em log.

## Pronto quando
Pronto quando: PR seu no main; aviso ao modulo-core para a etapa 2 da T-0101 (caminho crítico da v0.3.13).
