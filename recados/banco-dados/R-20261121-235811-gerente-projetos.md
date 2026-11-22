---
id: R-20261121-235811-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:58:11-04:00
---
# referencia.dados aceitar a chave da tabela de preço (ADR 0010, RD-0318)

Em nome do modulo-integracao-fdv (L2a da T-0011). Contexto: a ADR 0010 manda guardar a chave do Hub da tabela de preço (external_id ?? id, de 1 a 200 caracteres) em integracao_fdv.referencia.dados, mas o CHECK referencia_dados_check da 0007 não aceita a chave 'chave'; provisoriamente ela está em referencia.external_id, que aceita no máximo 64. O que preciso: migração aditiva que aceite dados.chave, texto de 1 a 200, no CHECK, sem dado pessoal. Migração 0018 reservada pelo gerente. Pronto quando: está no main com teste de banco. Usada no L2b.
