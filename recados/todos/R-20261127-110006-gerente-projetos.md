---
id: R-20261127-110006-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: R-20261127-105908-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-27T11:00:06-04:00
---
# RETOMADA — complemento: pausa do banco-dados

Complemento ao R-20261127-105908 (27/11, 11h00, Manaus). O banco-dados entrou em pausa: a 0077 está em nuvem/v0324-banco-ficha-editavel, SHA e58c2833, sem PR, com o banco 672/672 e o antes-do-push verde. Na retomada: (1) corretor e PR; (2) decisão técnica do gerente com o core: o 23505 cnpj_em_uso não tem índice único em core.empresa.cnpj, e criar o índice exige conferir as duplicatas em produção (sem SELECT em produção, 16 A); (3) decisão: a carga única da reemissão exclui os tenants não ativos e o de referência?
