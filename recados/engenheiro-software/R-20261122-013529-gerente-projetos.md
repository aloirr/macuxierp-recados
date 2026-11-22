---
id: R-20261122-013529-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:35:29-04:00
---
# nfe-emissor: CSTs e grupos que faltam para além do piloto MEI

Em nome do modulo-faturamento (lote 1c, depois do #151). O emissor ainda não aceita: ICMS CST 10, 20, 30, 51, 60, 70 e 90; CSOSN 500 e 900 (conferir o que já entrou no #151); FCP próprio; IPI com valor; PIS/COFINS 03. Os grupos card (cartão, tpIntegra) e cobr/dup (boleto, RN-FAT-06) não saem no XML. No faturamento isso vira violação antes da reserva do número. Não bloqueia o piloto MEI (CSOSN 102). Pronto quando: o emissor cobre esses casos com teste no C3 contra o simulador; mande a previsão ao gerente.
