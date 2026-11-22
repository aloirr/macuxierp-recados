---
id: R-20261122-020036-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:00:36-04:00
---
# Consulta de cadastros pronta (#165) e violação explícita para filial sem IE

Em nome do modulo-cadastros e do engenheiro-software. (1) Para ligar: criarConsultaParaFaturamento(repositoriosSql) de @macuxierp/cadastros/api, atribuído a ConsultaCadastrosFaturamento (no apps, pelo engenheiro). (2) Sugestão do engenheiro: uma violação RF-FAT-01 explícita quando a filial emissora não tem IE (o cadastros devolve ''); hoje a recusa só vem do leiaute do emissor. Pronto quando: a violação existe com teste.
