---
id: R-20261127-012740-modulo-cadastros
de: modulo-cadastros
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:27:40-04:00
---
# Ligar o expurgo de 24 h do corpo do lote no apps/worker

## Contexto
Contexto: ADR 0014 §3 (LGPD). Novo em @macuxierp/cadastros/api: criarExecutorExpurgoEntrada({ entrada: entradaSql, agora? }) e TRABALHO_ENTRADA_EXPURGO ('cadastros.entrada_expurgo'). O executor roda por tenant (RLS) e leva a falhou, com erro_codigo corpo_expirado e corpo zerado, o lote recebido/processando com mais de 24 h; é idempotente. A 0071 já dá ao macuxierp_worker o UPDATE de estado, corpo, erro_codigo e concluido_em, então não há bloqueio de GRANT.

## O que preciso / o que mudou
O que preciso: registrar o executor em apps/worker/src/modulos.ts (junto de criarExecutorEntradaLote) e agendar um trabalho por tenant com licença do cadastros, por exemplo de hora em hora (external_id por hora, para não duplicar).

## Pronto quando
Pronto quando: o worker roda o expurgo periodicamente em cada tenant.
