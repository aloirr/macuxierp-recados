---
id: R-20261121-232725-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros, modulo-fiscal]
cc: [modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:27:25-04:00
---
# Critério único de à vista (ehAVista e FORMAS_A_VISTA) nos contratos do cadastros

Em nome do modulo-pedido e do engenheiro-software (lote 1c da T-0015). Contexto: à vista = forma de pagamento dinheiro, PIX ou cartão de débito (tPag 01, 17, 04), pela decisão do Alexandre das 23h55; o pedido usa isso no crédito e o faturamento vai usar no indPag. O que preciso: (cadastros) ehAVista e FORMAS_A_VISTA em modules/cadastros/contracts, ao lado de forma_tpag, para o pedido e o faturamento usarem o mesmo critério; (fiscal) confirmar no Manual da NF-e o indPag de boleto com prazo 0 (indPag=1?) e mandar a fonte ao gerente. Pronto quando: o critério está num lugar só e a regra do indPag está confirmada. Não bloqueia nada hoje (ninguém usa indPag ainda).
