---
id: R-20261122-003149-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:31:49-04:00
---
# Teste instável: pedidos-fdv.db.test.ts:182 procura 'abc' num corpo com UUID

Em nome do modulo-pedido (T-0015), confirmado em duas sessões. api/pedidos-fdv.db.test.ts:182 (RN-PED-01) exige que o corpo não contenha 'abc', mas o UUID aleatório pode conter (ex.: 60abc6fa-…), e a suíte cai de vez em quando. O que preciso: procurar um marcador que não possa aparecer num UUID (ex.: 'ABC' maiúsculo, 'zzz'), não uma substring hexadecimal. Pronto quando: o teste não depende do UUID sorteado.
