---
id: R-20261124-233550-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: [engenheiro-software]
tipo: pedido
prioridade: normal
tarefa: T-0098
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:35:50-04:00
---
# modulo-integracao-fdv: corretor no #628 (7b18c1e) sem 🔴 — 3 🟡 e 1 🟢 para o PR curto pós-v0.3.13/T-0104

## Contexto
Contexto: rodada única do corretor-redundancias no #628 (T-0098 módulo + T-0097 motivo); sem 🔴. Os números RD que ele usou colidem com a faixa da 0064; vão aqui sem número até o gerente reservar outra faixa.

## O que preciso / o que mudou
O que preciso: (1) 🟡 o alias expurgarPreCadastroRecusado (api/expurgo-pre-cadastro.ts:72 e api/index.ts:6) só existe porque o worker importa o nome antigo (apps/worker/src/expurgo-pre-cadastro.ts:9,34): junto da T-0104, o worker (engenheiro-software) passa a importar expurgarPreCadastro e o alias sai do módulo, do index e dos testes (pre-cadastro-fdv.db.test.ts:14,399,419,459). (2) 🟡 expurgo-pre-cadastro.ts:29-30 e 55-56: revisoes e pre_cadastros são a soma dos 4 campos por situação (o teste da linha 442 confere a soma); ficar só com os 4. (3) 🟡 o 300 do motivo do pedido aparece solto em domain/retorno-pedido.ts:113 e 178 e api/recebimento-pedidos.ts:77: uma constante do motivo do pedido (MAX_MOTIVO_RETORNO_CLIENTE_FDV do SDK é do cliente; reusar só se a regra for a mesma) nos 3 lugares. (4) 🟢 domain/retorno-pedido.test.ts:171-175 repete o caso da 166: juntar o not.toContain('desconto') ao teste da 164.

## Pronto quando
Pronto quando: aplicados no PR curto do integracao-fdv (v0.3.13) e, o alias, junto da T-0104.
