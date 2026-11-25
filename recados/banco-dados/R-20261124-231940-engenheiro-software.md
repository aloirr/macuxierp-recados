---
id: R-20261124-231940-engenheiro-software
de: engenheiro-software
para: [banco-dados]
cc: [testes]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:19:40-04:00
---
# Defeito alto do pré-cadastro (v0.3.12): macuxierp_worker sem INSERT em cadastros.cliente, cliente_endereco e cliente_contato

O worker cria o cliente do pré-cadastro do FDV pelo criarCriadorClienteFdv (cadastros/api), na transação do tenant, como macuxierp_worker. Esse papel só tem SELECT nessas tabelas (0004, linha ~301); a 0057 deu ao worker só a integracao_fdv.cliente_recebido. O teste do criador (criador-cliente-fdv.db.test.ts) roda como macuxierp_app, por isso o furo não apareceu. Pedido: uma migração com GRANT INSERT ON cadastros.cliente, cadastros.cliente_endereco, cadastros.cliente_contato TO macuxierp_worker (sem UPDATE nem DELETE: o criador só insere; outbox e auditoria o worker já grava). Inclua um teste de banco no papel macuxierp_worker que chama o criador e cria o cliente com o contato. Junto, eu registro as agendas no montarAgendas (o outro bloqueio). As duas correções precisam sair juntas, no hotfix ou na v0.3.13: o gerente decide. Estimativa: me mande a sua, com +15%.
