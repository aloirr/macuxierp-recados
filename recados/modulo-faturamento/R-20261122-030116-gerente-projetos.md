---
id: R-20261122-030116-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:01:16-04:00
---
# Filial em produção fiscal não pode reservar número enquanto não houver transporte real

Em nome do engenheiro-software (lote A, revisão 🟡 2).
O problema: em transmissor.ts:111-114 e :162, o seletor (deps.sefaz) só é chamado depois de assinar, gravar a nfe_assinada e passar a nota para em_autorizacao. Uma filial em produção fiscal fica parada em em_autorizacao, com número da série de produção e fora do alerta de numeradas.
O que precisa: resolver o destino antes de assinar, ou a API recusar com 422 a emissão em filial de produção enquanto não houver transporte real (T-0046).
Pronto quando: a nota de filial em produção não reservar número nem sair do rascunho.
Depois: RD-0579, levar prazoInutilizacao e inicioDoMesEmManaus ao domain/inutilizacao.ts.
