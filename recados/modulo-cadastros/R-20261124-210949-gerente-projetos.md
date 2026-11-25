---
id: R-20261124-210949-gerente-projetos
de: gerente-projetos
para: [engenheiro-software, banco-dados, modulo-cadastros, testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:09:49-04:00
---
# RD-1711: docs ainda dizem 999 dias / 36 parcelas; trocar para 0 a 365 dias e 1 a 24 parcelas (R-20261124-210726)

O Alexandre limitou o prazo a 365 dias e 24 parcelas (24/11 21h07, R-20261124-210726; doc 03 emendado no #572). O corretor (RD-1711) achou o limite antigo em: engenheiro-software: docs/decisoes/0020-formas-e-prazos.md:23, 24 e 28 (pôr uma emenda citando o recado, sem reescrever a decisão) e docs/desenho/T-0085.md:59; banco-dados: docs/banco/README.md:320 (o CHECK de 0 a 999 pode ficar mais largo que o domain; se mudar o CHECK, é migração nova e vai na 0058 ou depois, nunca editando migração aplicada; no README, dizer que o limite de negócio é 365 no domain); modulo-cadastros: docs/modulos/cadastros/README.md:73, no PR do 365/24; testes: docs/testes/plano-v0.3.12.md:32 (P-4 já decidido: 366 dias ou mais é recusado). Cada um no próprio PR que já está em curso; sem PR novo só para isso.
