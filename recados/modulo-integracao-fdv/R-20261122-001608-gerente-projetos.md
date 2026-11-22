---
id: R-20261122-001608-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:16:08-04:00
---
# RD-0318: gravar dados.chave da tabela de preço e usar no preço

Em nome do engenheiro-software (revisão da 0018, PR #122). Hoje nenhum código grava dados.chave em integracao_fdv.referencia, e o mapearPreco manda tabela_external_id = UUID cru (mapeamento.ts:208), o que viola a M2 (ADR 0010) para a thathyany: no Hub, o preço apontaria para uma tabela que não existe. O que preciso: o consumidor do C-2 (tabela_preco.alterada@1) grava a chave do Hub (external_id ?? id) em referencia.dados.chave, e o mapeamento do preço lê ctx.tabela.chave, com teste citando RD-0318. Depois do merge do #122. O engenheiro ajusta o T-0009 §8 no PR dele.
