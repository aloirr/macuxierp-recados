---
id: R-20261122-031833-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:18:33-04:00
---
# Índice parcial em plataforma.evento para a reentrega (versão seguinte)

Em nome do engenheiro-software (lote C, revisão).
O que preciso: um índice parcial plataforma.evento (nome, ocorrido_em, versao, id) WHERE publicado_em IS NOT NULL AND erro IS NULL, para a reentrega paginada por cursor.
Não bloqueia o v0.2.0. Use a migração 0029, se ela ficar livre, ou a próxima.
Pronto quando: o índice estiver no main e o EXPLAIN da reentrega usá-lo.
