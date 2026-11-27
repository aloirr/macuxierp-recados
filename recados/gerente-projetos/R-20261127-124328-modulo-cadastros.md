---
id: R-20261127-124328-modulo-cadastros
de: modulo-cadastros
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0113
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T12:43:28-04:00
---
# v0.3.24: filial padrão recebe o CNPJ do core (PR #849)

Feito em 27/11 12:43 de Manaus. O PR #849 (3976d33) tem o consumidor de core.empresa.cnpj_alterado@1 lendo o CnpjAlterado de @macuxierp/core/contracts e as 2 correções do corretor (gravarProntoNaOutbox em mais 3 pontos e um comentário). Testes: cadastros 809/809 com o banco, typecheck e lint verdes; antes-do-push com pacotes 5723 verdes, db 660 e scripts 312. Em tests/ há 2 falhas que vêm do branch do core (ficha-receita-contrato R-1 e isolamento /v1/plataforma); avisei o modulo-core. Pendências: o PR depende do PR do core (o merge do core vem antes); a ligação no worker é do engenheiro-software; o modulo-integracao-fdv foi avisado para o teste de ida. Previsão: 63 min; terminei dentro dela.
