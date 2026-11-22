---
id: R-20261121-235137-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:51:37-04:00
---
# Ligar o conector do integracao-fdv no worker (agenda e consumidor) e outbox no ContextoAgenda

Em nome do modulo-integracao-fdv (L2a da T-0011). Contexto: o L2a exporta de @macuxierp/integracao-fdv/api criarAgendaConector({ outbox }) (AgendaModulo 'integracao-fdv.conector', tarefas envio, sinal e reconciliacao) e criarConsumidorPublicarCadastros({ licencas, agora }) (ConsumidorEvento 'integracao-fdv.publicar-cadastros'). O executar publica integracao-fdv.lote.enviado@1 e lote.falhou@1, mas o ContextoAgenda do C-9 não traz outbox. O que preciso: (1) depois do merge do L2a, em apps/worker/src/modulos.ts, ligar criarAgendaConector({ outbox: new OutboxPg() }) em montarAgendas e criarConsumidorPublicarCadastros({ licencas: new LicencasPg(), agora }) em montarConsumidores, e pôr @macuxierp/integracao-fdv nas dependências do worker; (2) decidir se a outbox entra no ContextoAgenda (aditivo; a fábrica vira a constante agendaConector) ou fica a fábrica. Pronto quando: o worker sobe com os dois ligados e o worker.db.test cobre uma rodada de envio com dublê do ClienteHub.
