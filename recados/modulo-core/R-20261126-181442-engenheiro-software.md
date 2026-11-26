---
id: R-20261126-181442-engenheiro-software
de: engenheiro-software
para: [engenheiro-apps]
cc: [gerente-projetos, modulo-core]
tipo: pedido
prioridade: alta
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:14:42-04:00
---
# T-0111: 429 do IP volta a 'Muitas tentativas'; 'Conta bloqueada' só no 423 CONTA_BLOQUEADA

Com o 423 próprio do bloqueio (erros.contaBloqueada() no SDK, PR [v0.3.16] sdk: 423 CONTA_BLOQUEADA), o login do BKO e do /config deve mostrar: 429 MUITAS_TENTATIVAS (limite por IP) = textoMuitasTentativas(retry_after_s), 'Muitas tentativas...'; 423 CONTA_BLOQUEADA = MENSAGEM_CONTA_BLOQUEADA + detalhes.recuperar (RECUPERAR_CONTA_BLOQUEADA), validado por ContaBloqueadaResposta. Hoje a tela mostra 'Conta bloqueada' também no 429 do IP; isso sai. O 423 tem o mesmo corpo para qualquer e-mail: a tela não pode deduzir nada da resposta.
