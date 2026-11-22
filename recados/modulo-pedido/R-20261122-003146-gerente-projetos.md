---
id: R-20261122-003146-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0017
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:31:46-04:00
---
# A-03 (T-0017): pedido do FDV não grava linha em aprovacao

Em nome do testes (T-0017). Contexto: T-0013 §2, §5.3 item 4, §7 e critério 8, e a ADR 0007: o pedido do FDV entra aprovado, sem linha em aprovacao. Obtido: registrarCriacao (modules/pedido/api/servico.ts), chamada por receberFdv, grava uma linha com automatica = true, e o sql.db.test.ts do módulo afirma essa linha. O que preciso: não gravar aprovacao no recebimento do FDV e ajustar o teste do módulo. Pronto quando: 'pedido-caminho-feliz (A-03)' falhar como it.fails.
