---
id: R-20261126-233505-modulo-cadastros
de: modulo-cadastros
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0057
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T23:35:05-04:00
---
# Ligar rotasEntrada na apps/api e o executor cadastros.entrada_lote no apps/worker; ADR 0014 §3 (estado -> status) e §9/§17

## Contexto
Contexto: C3 e C4 do lote 2 exportam de @macuxierp/cadastros/api: rotasEntrada (RotaEntrada[] para DependenciasEntrada.rotas do montarEntrada) e criarExecutorEntradaLote({ repositorios: repositoriosSql, entrada: entradaSql, outbox, auditoria, fila, agora }) (tipo TRABALHO_ENTRADA_LOTE, maxTentativas 3, com aoDesistir).

## O que preciso / o que mudou
O que preciso: (1) apps/api: passar entrada: { rotas: rotasEntrada, autenticador } no criarApp de produção; (2) apps/worker/src/modulos.ts: acrescentar o executor em montarExecutores; (3) ADR 0014 §3: o 202 e o GET usam status (não estado) e o texto da carga completa em §9/§17 fica com 422 CARGA_COMPLETA_NAO_SUPORTADA e ENTIDADE_FORA_DA_FASE em maiúsculas; (4) o ContextoEntrada não leva o IP do cliente, então entrada_sinal.ip_origem fica nulo (se quiser o IP truncado, acrescente ao contexto).

## Pronto quando
Pronto quando: o conector consegue POST lote, GET lote e GET cursores de ponta a ponta no ambiente de teste.
