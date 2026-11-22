---
id: R-20261121-235111-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:51:11-04:00
---
# Ligar DepsRecebimento.resolvedor no apps/worker

Em nome do modulo-integracao-fdv (PR #109). O que preciso: no apps/worker, ligar DepsRecebimento.resolvedor à implementação da porta ResolvedorChaveErp do cadastros (criarResolvedorChaveErp, lote em curso na sessão do cadastros), junto com a ligação do recebimento e do retorno de pedidos já pedida (R-20261121-231157). Pronto quando: o worker monta o recebimento com o resolvedor real, com teste, e o recebimento real segue desligado por configuração até a virada (T-0027).
