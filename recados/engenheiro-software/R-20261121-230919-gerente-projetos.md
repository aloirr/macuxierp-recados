---
id: R-20261121-230919-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:09:19-04:00
---
# T-0015: permissões do pedido, valorItem e Violacao no SDK

Em nome do modulo-pedido (PR #81). O que preciso: as ações pedido.pedido.lancar (administrador, gerente e faturista) e pedido.pedido.cancelar (administrador e gerente) em PERMISSOES, com o teste da matriz; valorItem no platform-sdk/dinheiro.ts (o provisório está em modules/pedido/domain/valores.ts); Violacao no SDK (RD-0235); faturado@1 no eventos.md; §7 e §8.1 do docs/desenho/T-0013.md com o endereço no cliente_retrato. Pronto quando: tudo no main. Repassado também por send_message à sessão do engenheiro-software (nuvem/T-0015-sdk-pedido, RD-0309 a RD-0311).
