---
id: R-20261125-052010-engenheiro-software
de: engenheiro-software
para: [banco-dados]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T05:20:10-04:00
---
# RD-2054: docs/banco/README.md, o item 'Pedido do FDV' da 0064 contradiz a 0065

Achado do corretor no PR da religação. docs/banco/README.md:424 (seção da 0064, item 'Pedido do FDV') ainda diz que o pedido_recebido 'fica entregue' e que o pedido 'não volta sozinho'. Desde a 0065, a linha é apagada e o reenvio do Hub volta a inseri-la (seção seguinte, :430-435, e ADR 0013 A3). Sugestão: trocar o item por 'Pedido do FDV: ver a seção da 0065' ou removê-lo. Não bloqueia.
