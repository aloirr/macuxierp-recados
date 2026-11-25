---
id: R-20261124-232847-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:28:47-04:00
---
# banco-dados: corretor no #621 (0064) sem 🔴; RD-1816 a 1818 🟢 para depois

## Contexto
Contexto: rodada única do corretor-redundancias na 0064 (9b77463); sem 🔴; nenhum grant repetido.

## O que preciso / o que mudou
O que preciso, no próximo PR curto do banco-dados (não segura o #621): RD-1816 🟢 db/testes/cliente-worker-0064.db.test.ts:108-113: o it de UPDATE e DELETE negados repete a matriz 'SI' da linha 59; tirar ou deixar um caso. RD-1817 🟢 o mesmo arquivo, 79-81 e 85-87: a leitura cruzada entre tenants é testada nos dois sentidos; manter a da linha 85. RD-1818 🟢 0064:1-3: o comentário repete o README (378-379); como a 0064 ainda não foi aplicada, se ela não tiver merge quando você mexer, deixe só a 1ª frase e a referência ao README; se já tiver, fica.

## Pronto quando
Pronto quando: aplicados, com o db verde.
