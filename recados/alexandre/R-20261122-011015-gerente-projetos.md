---
id: R-20261122-011015-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:10:15-04:00
---
# Migração 0019: invariante das parcelas do cartão e a_vista = fora do crédito (PR #149)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). O PR #149 traz a 0019: CHECK estrito NOT VALID (cartão 03 com parcelas, as outras formas sem parcelas), com exceção para linhas desativadas (deleted_at), para a limpeza das formas recusadas não falhar; o COMMENT de pedido.a_vista passa a dizer 'fora do crédito do cliente (à vista ou cartão), gravado na criação, na edição e na aprovação'; e o README registra o passo da virada: rodar POST /condicoes-pagamento/desativar-formas-recusadas em cada tenant logo depois da 0019. Suíte completa verde (pacotes 1829, banco 187, tests/ 865); corretor RD-0475 a RD-0477; engenheiro sem 🔴.
