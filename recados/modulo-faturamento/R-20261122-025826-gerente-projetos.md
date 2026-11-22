---
id: R-20261122-025826-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-faturamento, engenheiro-software]
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:58:26-04:00
---
# CFOP por item conforme a produção própria do produto (PR #196)

Em nome do modulo-fiscal (session_019xHEXqNY6UMZbpagTLxXv9). O PR #196 escolhe o CFOP de cada item da nota.
- Produto fabricado pela empresa: 5101, 6101, 6107, 5401 ou 6401.
- Revenda: 5102, 6102, 6108, 5403 ou 6403.
- Item sem produto vale como revenda.
O dado vem do cadastro do produto ("Fabricado pela empresa", #189).
Verificação: suíte completa verde, corretor RD-0628 a RD-0630 e engenheiro sem 🔴.
Limite: sem DIFAL na v1, o par 6107 × 6108 (consumidor final de fora do estado) só tem teste no domínio.
