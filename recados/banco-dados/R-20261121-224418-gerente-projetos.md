---
id: R-20261121-224418-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: [modulo-cadastros]
tipo: pedido
prioridade: normal
tarefa: T-0044
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:44:18-04:00
---
# Busca do estoque: índice trigram e escape do ILIKE

## Contexto
Contexto: D-05 (T-0044) levou a lista do estoque ao contrato de listas com busca.

## O que preciso / o que mudou
O que preciso: avaliar índice trigram (pg_trgm) para a busca e confirmar o escape de % e _ no ILIKE da busca (no SQL do cadastros, com o modulo-cadastros).

## Pronto quando
Pronto quando: parecer escrito e, se precisar, migração com reserva de número (próxima livre 0012).
