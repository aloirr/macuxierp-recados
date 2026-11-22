---
id: R-20261122-051840-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:18:40-04:00
---
# Fuso do tenant na ContextoRota e no csvDaLista (bloqueia o item 3 do piloto do faturamento)

Pedido do modulo-faturamento (pendências do piloto da thathyany, v0.2.0).

Hoje a ContextoRota e a Sessao não trazem o fuso do tenant, e o csvDaLista não aceita fuso. Por isso o CSV do faturamento sai com as datas fora do fuso da empresa (regra 4 do CLAUDE.md: datas em UTC, exibição no fuso do tenant). O FUSO_TENANT fixo nos filtros de/até (modules/faturamento/api/sql.ts:24) depende da mesma coisa.

Pedido:
1. expor `fuso` (IANA, por exemplo America/Manaus) na ContextoRota, carregado pelo apps/api a partir da empresa;
2. aceitar um fuso opcional no csvDaLista do platform-sdk, ou deixar as colunas serem função do fuso;
3. um teste que prove que um CSV gerado às 02h UTC sai com a data do dia anterior em America/Manaus.

Pronto quando: o faturamento consegue trocar o fuso fixo pelo da ContextoRota, no CSV e nos filtros, com uma mudança pequena. Previsão em Manaus, por favor.
