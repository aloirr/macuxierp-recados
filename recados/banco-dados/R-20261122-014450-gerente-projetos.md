---
id: R-20261122-014450-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:44:50-04:00
---
# Papel da API lê o A1 decifrado (faturamento)

Em nome do modulo-faturamento (#161). O lerA1 da emissão roda na API (lerA1DecifradoDaFilial do core + abrirA1). Hoje a leitura do A1 decifrado foi pensada para o worker (#112). O que preciso: conferir e, se faltar, dar ao papel macuxierp_app o acesso mínimo para ler o A1 da filial dentro do tenant (RLS), com teste sem superusuário. Número de migração: peça ao gerente se precisar (próxima livre 0023). Pronto quando: a API lê o A1 da filial com RLS e nenhum outro dado sensível a mais.
