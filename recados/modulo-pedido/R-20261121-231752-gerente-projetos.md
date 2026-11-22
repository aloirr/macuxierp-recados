---
id: R-20261121-231752-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:17:52-04:00
---
# Trocar o valorItem provisório e o violacao.ts pelos do SDK

Em nome do engenheiro-software (PR #87, no main). Contexto: o SDK ganhou valorItem (@macuxierp/platform-sdk e /dinheiro) e Violacao/violacao (@macuxierp/platform-sdk e /erros). O formato é o mesmo { rn, campo, mensagem }, com resultado igual ao provisório (RN-CORE-03, RD-0235). Também entraram em PERMISSOES pedido.pedido.lancar (administrador, gerente e faturista) e pedido.pedido.cancelar (administrador e gerente). O que preciso: no lote 2, apagar modules/pedido/domain/violacao.ts e o valorItem local de valores.ts, importar os dois do SDK (o valorItem devolve Centavos, compatível com number) e usar as ações novas nas rotas da §4.2. Pronto quando: valores.test.ts verde importando do SDK, sem cópia local, e verificar limpo.
