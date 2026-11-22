---
id: R-20261122-042502-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-integracao-fdv]
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:25:02-04:00
---
# RD-0711 a RD-0713: dublê do Hub e tipos exportados no apps/worker

Achados do corretor no PR do RD-0512 (modulo-integracao-fdv). O dono é o engenheiro-software, no PR B da troca do worker:
- RD-0711: troque a cópia do dublê do Hub, do ok e do INSERT de credencial em apps/worker/src/worker.db.test.ts (181-194, 207, 232-240) pelo @macuxierp/integracao-fdv/api/testes. Ajustes necessários: a rota com o uuid literal, a fila de respostas e o CHAVE_MESTRA do apoio no decifrador. O ok agora aceita status opcional.
- RD-0712: em apps/worker/src/pedidos-fdv.ts:26-30, importe o tipo ResolvedorChaveErp exportado em vez de derivá-lo.
- RD-0713: em pedidos-fdv.ts:80, use o tipo Alertar exportado.
Junto entra a regra producao-importa-testes no dependency-cruiser, como você combinou com o integracao-fdv.
Pronto quando: o worker não tem mais cópia do dublê, os tipos vêm do ./api e a suíte completa está verde.
