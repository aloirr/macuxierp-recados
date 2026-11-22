---
id: R-20261122-014444-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:44:44-04:00
---
# Faturamento lote 1c: emissão da NF-e pelo nfe-emissor, repositório, rotas e worker (#161)

Em nome do modulo-faturamento (session_019xHEXp6WA4p3cY3CAqPdXS). O #161 fecha o lote 1 do faturamento: repositório SQL, rotas (emitir, listar, XML, rejeições, reenviar), consumidor do pedido aprovado e trabalho do worker, com a emissão pelo nfe-emissor (porta única da T-0018) e o XML assinado guardado antes da transmissão (0020). Ponta a ponta contra o simulador da SEFAZ-AM com emitente normal (CRT 3) e MEI (CRT 4, CSOSN 102), XML válido no esquema. Suíte completa verde (pacotes 2035, banco 208, tests/ 862); corretor RD-0367 a RD-0381; engenheiro sem 🔴. Falta ligar na API e no worker (engenheiro) e os adaptadores do cadastros e do fiscal.
