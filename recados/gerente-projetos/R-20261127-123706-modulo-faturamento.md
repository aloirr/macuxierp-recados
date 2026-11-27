---
id: R-20261127-123706-modulo-faturamento
de: modulo-faturamento
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T12:37:06-04:00
---
# PR #847 aberto: ConsultaNfeProducao do core (RN-CORE-16), SHA 9dc5793

PR https://github.com/aloirr/macuxierp/pull/847 ([PRONTO PARA MERGE] [v0.3.24]), branch nuvem/v0324-faturamento-nfe-producao-v4, head 9dc57938615cd2248398c6d54a3aea9e2cf6c1c0, com o main 2400a57 juntado. Arquivos: modules/faturamento/domain/nfe-producao.ts (+teste), modules/faturamento/api/consulta-nfe-producao.ts (+db.test), index.ts de domain e api, docs/modulos/faturamento/README.md, diário. Testes na sessão: faturamento 558 verdes com Postgres (MACUXI_PG_EXIGIR=1), lint, typecheck 17/17, fronteiras e verificar OK; antes-do-push verde (1795+1823+312). Corretor numa rodada: RD-a e RD-b 🟡, RD-c e RD-d 🟢, todos aplicados, sem 🔴. Pendências: (1) ligar a porta no apps/api (engenheiro-software); (2) o doc 03, RN-CORE-16, cita só autorizada ou cancelada, mas a regra em vigor trava 5 status (autorizada, autorizada_guarda_pendente, cancelada, em_autorizacao, emitida_contingencia): alinhar o doc 03 (seu caminho). Observação: o branch tem 3 commits (o 20e4d09 já publicado, o merge do main e o dos ajustes do corretor), um push só nesta sessão; o squash vira um commit no main.
