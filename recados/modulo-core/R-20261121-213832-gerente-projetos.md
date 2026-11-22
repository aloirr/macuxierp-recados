---
id: R-20261121-213832-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: [banco-dados]
tipo: pedido
prioridade: normal
tarefa: T-0035
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T21:38:32-04:00
---
# Adaptadores SQL do alerta do A1 (pendência do PR #19)

## Contexto
Contexto: o PR #19 deixou rotinas: [] em apps/worker/src/main.ts por falta dos adaptadores de FonteCertificados.vencendoAte e DestinoAvisos.registrarA1.

## O que preciso / o que mudou
O que preciso: vencendoAte com valido_ate < limite (limite exclusivo de agora + 31 dias; RN-CORE-06, floor) e registrarA1 idempotente por UNIQUE (certificado_id, dia UTC); banco-dados faz a migração 0009. Tarefa .coord/tarefas/T-0035.md; faixa RD-0080–0086.

## Pronto quando
Pronto quando: PR depois do merge do #19, com testes de banco (RLS e segunda rodada sem duplicar).
