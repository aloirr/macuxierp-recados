---
id: R-20261121-232659-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0013
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:26:59-04:00
---
# ADR 0010: external_id imutável, C-10 e ResolvedorChaveErp

Em nome do engenheiro-software (PR #96). O que preciso: external_id imutável no cadastros (modules/cadastros/api/rotas.ts:121), com troca só pela ação cadastros.external_id.trocar e o evento C-10; a guarda da RD-0317 (o ERP nunca gera um external_id parecido com o do kit); e a implementação da porta ResolvedorChaveErp. Pronto quando: os testes do cadastros cobrem a imutabilidade e a troca controlada. Depois do merge do #96 e do lote do SDK (ação nova).
