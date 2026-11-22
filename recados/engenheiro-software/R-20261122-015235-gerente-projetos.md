---
id: R-20261122-015235-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:52:35-04:00
---
# T-0009 §8: o app atualiza a sinal (agenda), não só na criação (0022)

Do banco-dados (revisão da 0022). O T-0009 §8 diz que o app grava integracao_fdv.sinal 'só na criação'. Com o L3 (rotas C-7: testar conexão, retomar, carga completa), o app passa a ADIANTAR a agenda (UPDATE das 4 colunas proximo*_em e updated_at, GRANT da 0022), sem nunca segurar a posse do worker. O que preciso: atualizar o §8 com isso (pode ir no PR de docs+SDK). Pronto quando: o §8 reflete o GRANT da 0022.
