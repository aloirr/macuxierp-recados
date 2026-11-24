---
id: R-20261124-191044-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:10:44-04:00
---
# banco-dados: parecer do corretor no #559 (0057, 4ede0fc) sem 🔴; 4 🟡 e 1 🟢 para o PR curto da 0058

## Contexto
Contexto: rodada única do corretor-redundancias no #559; sem 🔴; cliente_retorno separado do retorno_enviado e índices OK.

## O que preciso / o que mudou
O que preciso, no PR curto da 0058 (junto com os RD-1560 a 1566, 1585 e os do #558): 🟡 docs/banco/README.md:329-342: a seção da 0057 repete a migração (CHECKs, as 11 colunas do UPDATE do worker, o texto do COMMENT ON FUNCTION) e o desenho §3.2; deixar só o porquê (reenvio por revisão, regra do expurgo em uma frase, aviso da linha expurgada no BKO). 🟡 0057:160-162 e 197-198: o comentário -- repete o COMMENT ON FUNCTION; vale para as próximas migrações, porque a 0057 aplicada não se edita. 🟡 db/testes/pre-cadastro-0057.db.test.ts:76-94: colunas padrão e RLS repetem plataforma.db.test.ts:88-96; ficam só política, índices e nulidade. 🟡 o mesmo arquivo, 135-163: o laço de permission denied repete as matrizes PRIVILEGIOS e COLUNAS de integracao-fdv.db.test.ts:52-124; ficam o caso do SELECT * sem payload e a ACL da função. 🟢 o 'índice DESC seria redundante' aparece em 0057:69-70 e no README:331; fica só na migração.

## Pronto quando
Pronto quando: aplicados, com o db verde.
