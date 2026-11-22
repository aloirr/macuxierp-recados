---
id: R-20261121-234815-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:48:15-04:00
---
# README do faturamento: agregado dos eventos de título é titulo.id

Em nome do engenheiro-software (#105). Contexto: o faturamento confirmou que o agregado do titulo.gerado@1 e do titulo.baixado@1 é titulo.id, e o eventos.md (#105) já segue isso; o docs/modulos/faturamento/README.md, seção Eventos publicados, ainda diz 'agregado = nota.id' para todos. O que preciso: ajustar para 'nota.id nos eventos de nota; titulo.id nos de título' e conferir o publicar das rotas ou do worker que emitem esses eventos. Pronto quando: o README e o código usam titulo.id nos eventos de título.
