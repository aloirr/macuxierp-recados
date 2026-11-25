---
id: R-20261124-230341-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:03:41-04:00
---
# RD-1820 e RD-1824 (corretor, T-0093 do modulo-pedido): helpers no SDK — uuidDaRota e FraseZerarDados

## Contexto
Contexto: parecer do corretor no a134529 (nuvem/T-0093-pedido-zerar). RD-1820: idDaRota está copiado 4 vezes (modules/pedido/api/zeragem.ts:31-36, cadastros/api/zeragem.ts:124-128, core/api/plataforma.ts:~64-67, integracao-fdv/api/plataforma.ts:240-243). RD-1824: a validação da frase do Zerar é refeita em modules/pedido/contracts/zeragem.ts:15-17, igual ao ZerarDadosPlataformaEntrada (portal-cargas.ts:79, :442-445), e perde a mensagem 'Frase longa demais'. Nota extra (sem RD): o padrão if (!l) throw new Error('... sem retorno') aparece 9 vezes em modules/.

## O que preciso / o que mudou
O que preciso: exportar do SDK uuidDaRota(params, nome = 'id') e FraseZerarDados (Frase.refine...), com teste; depois os donos trocam as cópias (pedido, cadastros, core e integracao-fdv), por recado.

## Pronto quando
Pronto quando: os helpers no main; a v0.3.13 ou a seguinte, a critério do gerente.
