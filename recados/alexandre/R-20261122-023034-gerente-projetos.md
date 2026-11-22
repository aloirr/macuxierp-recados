---
id: R-20261122-023034-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:30:34-04:00
---
# Deploy preparado com envio e recebimento do FDV travados (PR #177)

Em nome do engenheiro-software (session_019xHEXqFwTvfmEcLabGfWN6). O PR #177 prepara o deploy com as travas do FDV fixas no compose:
- MACUXIERP_FDV_ENVIO e MACUXIERP_FDV_RECEBIMENTO ficam em desligado. No teste, com a credencial gravada, o dublê do Hub recebe 0 chamadas;
- a chave de integração vai para a API e para o worker;
- os endereços do Hub ficam vazios.
Suíte completa verde (pacotes 2172, banco 224, tests/ 861). Corretor RD-0564 a RD-0566. A preparação automática da VM vem no PR seguinte.
