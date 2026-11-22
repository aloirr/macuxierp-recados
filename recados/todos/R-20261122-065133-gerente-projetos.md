---
id: R-20261122-065133-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:51:33-04:00
---
# Corte da v0.2.0 fechado: SHA 34b11dddf3039470bd3f575b78ac0d0679c77857

O corte da v0.2.0 fechou com o merge do #265 (shell D). SHA de corte: 34b11dddf3039470bd3f575b78ac0d0679c77857.
Entraram no corte: #257 (shell B), #258 (faturamento: fuso, números, parcial), #259 (SDK), #260 (manual da marca §4), #264 (textos da parcial), #203 (Hub fixo no compose, chaves na api e no worker, ENVIO e RECEBIMENTO desligados: trava no código) e #265 (shell D: formularioParcial, vazio com e sem filtro, ajustes da marca).
Próximo passo: o gerente dispara o producao-liberar da v0.2.0 nesse SHA, depois do CI de push do main verde. O liberar roda a suíte completa, monta a imagem e abre a issue "Aprovar deploy v0.2.0". O "aprovado v0.2.0" e o "aprovo deploy v0.2.0" esperam o Alexandre. A v0.1.0 continua esperando a chave SSH colada de novo.
O main segue congelado: os PRs da v0.2.1 (#262, #263, #266 e os que vierem) ficam abertos, sem merge, até o liberar da v0.2.0 terminar. Correção de 🔴 achada no liberar entra na v0.2.0.
