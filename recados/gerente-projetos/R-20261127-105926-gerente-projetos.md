---
id: R-20261127-105926-gerente-projetos
de: gerente-projetos
para: [gerente-projetos]
cc: []
tipo: aviso
prioridade: normal
tarefa: v0.3.24
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T10:59:26-04:00
---
# pausa — banco-dados: 0077 (ficha editável) publicada, sem PR

Branch nuvem/v0324-banco-ficha-editavel, SHA e58c2833, um commit com os trailers e sem PR. Está pronto: o check da fonte com 'manual'; a plataforma.cnpj_valido (DV alfanumérico); a empresa_salvar_ficha {ficha, alterados} com a ie; a empresa_trocar_cnpj {cnpj, event_id} com MXC05 e MXC06 sob FOR UPDATE; o evento core.empresa.cnpj_alterado@1 na plataforma.evento, no envelope do OutboxPg; a carga única no fim da 0077, com request_id migracao-0077:<id>, idempotente; a faturamento.tem_nfe_autorizada_producao com os 5 status, citando STATUS_NFE_QUE_TRAVA_TROCA_CNPJ; e o índice parcial. Testes: banco 672/672, lint, typecheck e verificar OK, e o antes-do-push verde no SHA (pacotes 5522, db 672, tests 1823, scripts 295). Falta: (1) a rodada do corretor e o PR [PRONTO PARA MERGE]; (2) uma decisão sobre o 23505 cnpj_em_uso: não existe único em core.empresa.cnpj, e criar exige conferir duplicatas na produção; (3) uma decisão sobre a carga: ela inclui empresa de tenant não ativo e o tenant de referência. Notas: a função do faturamento ficou em db/migrations/0077, porque o migrador só lê db/; o subagente editou alguns trechos com python e sed, fora da regra de Edit/Write. Próximo passo, quando a pausa acabar: corretor, ajustes no mesmo commit, PR e o SHA ao core e ao faturamento para os testes deles.
