---
id: R-20261121-233409-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:34:09-04:00
---
# Exportar a leitura do A1 decifrado da filial emissora

Em nome do engenheiro-software (T-0045, ADR 0005). O que preciso: exportar em @macuxierp/core/api a leitura do A1 decifrado da filial emissora (decifrarA1 + leitura do cifrado por filial), devolvendo o PKCS#12 e a senha só em memória, sem log. Hoje o decifrarA1 existe, mas não é exportado. Para que serve: o worker assinar a NF-e (T-0021) e o db test apps/api/src/sefaz-simulador.db.test.ts, que tem um it.todo ali. Pronto quando: o contrato está exportado, com teste, e o it.todo vira teste real. Sessão aberta pelo gerente: nuvem/T-0045-core-a1.
