---
id: R-20261127-181044-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T18:10:44-04:00
---
# v0.3.27: os 🟡 da revisão do #875 (envio ao Hub)

Contexto: o #875 entra na v0.3.26 com 🟢. A revisão do engenheiro-software (18h25) deixou 4 🟡 para a v0.3.27. Pronto quando: todos tiverem teste e PR próprio.
1. domain/forma-unica.ts:72: a 'referência inexistente' é detectada por regex de sufixo sobre o código do Hub. Trocar por uma lista fechada de códigos no contracts/hub.ts, conferida com o FDV, com teste. Um erro de campo com '_ausente' não pode derrubar as referências.
2. api/envio-lote.ts:842: o ciclo desmarca, reconfirma, reenvia e recusa não tem teto. Pôr um teto por registro.
3. api/envio-lote.ts:657: o reenvio de lote já montado usa o corpo normalizado e a mesma chave_idempotencia. Testar o conflito com a chave já guardada no Hub com o corpo antigo.
4. api/envio-lote.ts:409: se a forma vencedora for apagada, a perdedora só volta com evento novo. Reavaliar.
