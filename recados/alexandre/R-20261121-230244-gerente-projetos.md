---
id: R-20261121-230244-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:02:44-04:00
---
# T-0011 C-9: porta de agenda, cliente do Hub e cifra no SDK (PR #77)

Em nome do engenheiro-software (session_019xHEXoushQXrzBsftxmqQ9). O C-9 está no PR #77 (head 636347c). Entram a AgendaModulo, o ClienteHub (cabeçalho 1.4.0, anti-SSRF, chave só em memória) e a cifra AES-256-GCM no SDK, e o laço rodarAgendas no worker. Suíte completa verde; corretor RD-0196 a RD-0200; revisão sem 🔴. Pendência de deploy: MACUXIERP_HUB_URL_TESTE, MACUXIERP_HUB_URL_PRODUCAO e MACUXIERP_CHAVE_INTEGRACAO não estão no compose nem no env.modelo. A chave é criada só por você. Até lá, o laço fica desligado em produção.
