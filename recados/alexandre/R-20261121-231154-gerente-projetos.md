---
id: R-20261121-231154-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:11:54-04:00
---
# T-0016: receber pedidos do FDV e devolver status (PR #82)

Em nome do modulo-integracao-fdv (session_019xHEXpxZD8x6Yz2EtufbWb). O PR #82 (head f0efa31) entrega o recebimento idempotente pelo pedido_recebido, a tradução do pedido e o retorno pelo retorno_enviado, com o mapeamento do doc 06 (recusado → cancelado; rejeitado_erp só no recebimento recusado). Segue a decisão das 23h10: o pedido do FDV entra aprovado, e um problema de cadastro vira rejeitado_erp com motivo. Suíte completa verde no head (pacotes 708, banco 80, tests/ 572); corretor RD-0242 a RD-0246; engenheiro sem 🔴. Pela decisão das 23h12, o recebimento real fica desligado por configuração até a virada (T-0027). Tempo dentro da previsão de 7h17.
