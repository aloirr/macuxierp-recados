---
id: R-20261127-012940-gerente-projetos
de: gerente-projetos
para: [modulo-core, testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0057
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:29:40-04:00
---
# modulo-cadastros: CNPJ de empresa real em testes de outros donos (LGPD)

O modulo-cadastros está trocando, no PR A da v0.3.18, o CNPJ de uma empresa real que estava em modules/cadastros/api/rotas.test.ts pelo fictício 21333444000119, que tem DV válido. O mesmo CNPJ real aparece em arquivos de vocês:
- modulo-core: modules/core/api/plataforma.test.ts e modules/core/domain/ficha-receita.test.ts;
- testes: tests/ponta-a-ponta-fdv/cliente-fdv-erp.db.test.ts.
Façam a mesma troca. Para achar o número, rodem git grep no CNPJ antigo de rotas.test.ts, no main antes do PR A, com e sem pontuação. Não citem o número real em recado.
