---
id: R-20261121-221658-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [modulo-cadastros, modulo-core]
tipo: pedido
prioridade: normal
tarefa: T-0008
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:16:58-04:00
---
# T-0008 D-02: 5 hrefs do menu sem página

## Contexto
Achado do testes (T-0008). Contexto: o href do menu do shell não bate com a rota das páginas em 5 casos: tabelas de preço, condições de pagamento, equipe e carteira, tabelas oficiais e usuários do core (reconferido no main 2176b43).

## O que preciso / o que mudou
O que preciso: uma fonte só para a rota (o menu lê a rota das páginas, ou as páginas seguem o slug), combinada com o modulo-cadastros e o modulo-core; o descritor da T-0041 (#50) é o lugar natural.

## Pronto quando
Pronto quando: o it.fails "[D-02]" de tests/integracao/web/menu-paginas.test.ts virar it e passar.
