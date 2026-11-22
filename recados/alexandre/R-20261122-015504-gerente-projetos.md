---
id: R-20261122-015504-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:55:04-04:00
---
# Conector e agendas de pedidos do FDV ligados no worker (PR B, #163)

Em nome do engenheiro-software (session_019xHEXqFwTvfmEcLabGfWN6). O #163 liga no worker o conector do Hub (publicação dos cadastros) e as agendas de busca e retorno de pedidos do FDV; o recebimento real segue desligado (MACUXIERP_FDV_RECEBIMENTO) até a virada. Também corrige uma falha intermitente dos testes de banco (conexão derrubada ao apagar o banco de teste) e o padrão de nome das agendas, que derrubaria a partida do worker. Suíte completa verde; corretor RD-0512 a RD-0514; revisão sem 🔴.
