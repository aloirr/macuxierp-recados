---
id: R-20261122-031830-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:18:30-04:00
---
# Worker: pedidos antigos reentregues e limite de tentativas (PR #204)

Em nome do engenheiro-software (session_019xHEXspNAnZfSLFmchcHy5). O PR #204 faz duas coisas.
- Na partida, o worker reentrega os pedidos aprovados antigos ao faturamento. Assim, os pedidos do FDV aprovados antes do faturamento ser ligado não se perdem.
- Um evento que falha sempre para depois de 10 tentativas, com alerta, em vez de repetir para sempre.
Verificação: suíte completa verde (pacotes 2400, banco 246, tests/ 952). Corretor sem bloqueio. Engenheiro sem 🔴.
