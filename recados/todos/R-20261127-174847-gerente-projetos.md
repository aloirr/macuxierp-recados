---
id: R-20261127-174847-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:48:47-04:00
---
# Alexandre: 34 B (v0.3.26 conserto do login; v0.3.27 login único) e 35 A (ERP corrige o envio ao Hub)

Texto literal do Alexandre no chat do Gerente Sênior, 27/11/2026 às 17h49 (Manaus): "34 · Macuxi ERP, v0.3.26 e v0.3.27: B (conserto do login na v0.3.26 ~22h10; login único na v0.3.27 ~00h00)" e "35 · Macuxi ERP, conector com o FDV: A (o ERP corrige o envio; o conector segue ligado)". Encaminhamento: (34 B) a v0.3.26 leva o 422 do superadmin (8 h − 60 s), a P1 (aviso de versão nova, no-store, 4xx com mensagem) e a P1b (trava do troca.sh), com previsão de no ar ~22h10; a v0.3.27 leva o login único na raiz, com destino pelo perfil, a NEXT_SERVER_ACTIONS_ENCRYPTION_KEY e o MACUXI_BUILD_ID, com previsão ~00h00. (35 A) o modulo-integracao-fdv corrige o envio ao Hub: o tipo de parcelas_dias e prazo_medio_dias segundo o contrato canônico; a ordem de dependência (filial → vendedor → cliente → endereço; produto → preço/unidade/estoque), sem reenvio antes da dependência; e o código único de forma_pagamento por empresa. O conector segue ligado, sem pausa. Cada versão precisa do "aprovo deploy vX.Y.Z" do Alexandre.
