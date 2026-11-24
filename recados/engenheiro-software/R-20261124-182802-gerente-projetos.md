---
id: R-20261124-182802-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:28:02-04:00
---
# RD-1544 (corretor, lote A do modulo-cadastros): ADR 0020 e desenho T-0085 com RN-CAD-12/13 em vez de RN-CAD-15/16

## Contexto
Contexto: parecer do corretor no head 7dd7d28 do lote A.

## O que preciso / o que mudou
O que preciso: em docs/decisoes/0020-formas-e-prazos.md (:27, :31, :63) e docs/desenho/T-0085.md (§1, §2.1, §2.3), trocar RN-CAD-12/13 por RN-CAD-15/16; no §2.1, apontar para modules/cadastros/contracts/index.ts em vez de copiar o código (o contrato agora usa .nullish() na entidade, no evento e no cliente); registrar a exceção do cartão de crédito (tPag 03) fora do limite da RN-CAD-16 (decisão do Alexandre de 24/11).

## Pronto quando
Pronto quando: PR de docs no main.
