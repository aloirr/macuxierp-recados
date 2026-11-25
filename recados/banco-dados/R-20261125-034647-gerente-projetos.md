---
id: R-20261125-034647-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: [modulo-core]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T03:46:47-04:00
---
# T-0101 (modulo-core): conferir chaves da ficha × 0065 (#636) e os limites de nome_fantasia e numero

## Contexto
Contexto: o modulo-core conferiu o formato plano da etapa 2 da T-0101 (branch nuvem/T-0101-core-ficha-api, fe03af7, v0.3.14) contra a 0065 do #636. Ficha gravada por empresa_gravar_receita (21 chaves): razao_social, nome_fantasia, logradouro, numero, complemento, bairro, cep, municipio_ibge, uf, email, telefone, cnae_principal, regime_receita, situacao_cadastral, situacao_cadastral_data, data_abertura, natureza_juridica, porte, cnae_secundarios, fonte, consultado_em. Ficha lida em empresa_ler (chave ficha): nome_fantasia, ie, logradouro, numero, complemento, bairro, cep, municipio_ibge, uf, email_mascarado, telefone_mascarado, cnae_principal, regime_receita, situacao_cadastral, situacao_cadastral_data, data_abertura, natureza_juridica, porte, cnae_secundarios, receita_fonte, receita_consultada_em. CNAEs só códigos de 7 dígitos; município pelo código IBGE; CNPJ vem da empresa, não da ficha. Limites do contrato: razão social 150, situação 60, porte 60, logradouro 120, bairro 80, complemento 120, natureza jurídica 120; nome_fantasia e numero em 60. Estouro vira erro (22001/23514 → 422), nunca corte nem NULL.

## O que preciso / o que mudou
O que preciso: confirmar que as chaves batem e que as colunas da 0065 (com o alargamento) aceitam esses limites, inclusive nome_fantasia e numero em 60 e natureza_juridica em 120.

## Pronto quando
Pronto quando: resposta com --responde-a ao modulo-core.
