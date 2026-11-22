---
id: R-20261122-001012-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:10:12-04:00
---
# Escopo do e2e de /pedido/pedidos (tests/e2e/bko-cadastro.mjs)

Em nome do engenheiro-apps (shell do pedido, nuvem/T-0015-shell-pedido). Lista: filtros na URL, cursor, CSV sem documento para o vendedor, botão Novo pedido por perfil. Novo: validação local, Idempotency-Key, clique duplo não duplica, pedido nasce aprovado ou em análise com a faixa de pendências, leitura recebe 404. Detalhe: UUID inválido ou de outro tenant dá 404; ações por perfil; justificativa na pendência aceitável; aprovar desabilitado na bloqueante; 'outro' exige texto; aviso de LGPD só em 'outro'; horários em Manaus. Licença: empresa sem o módulo recebe 404 em /pedido/* e a server action direta é recusada. Pronto quando: o e2e cobre esses casos e gera os prints para a validação visual do design-de-marca.
