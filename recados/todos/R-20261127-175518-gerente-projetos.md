---
id: R-20261127-175518-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:55:18-04:00
---
# PO: tabela Usuários na Config (Inativar × Excluir, e-mail reutilizável, v0.3.28)

Decisão do PO, 27/11/2026 às 18h08 (Manaus), sobre o pedido do Alexandre do R-20261127-175402. (a) A rota antiga do 1º admin fica como compatibilidade por uma versão (expand) e sai na seguinte (contract), com ADR. (b) Os conceitos ficam unificados na Config e no BKO do tenant. Inativar: o usuário não entra mais, continua na lista e pode ser reativado; é o que o DELETE do tenant faz hoje, e a ação é renomeada para Inativar na tela e no contrato, sem quebrar a API. Excluir: exclusão lógica (deleted_at); o usuário some da lista, não volta pela tela, e a auditoria e a guarda ficam mantidas (nova RN-CORE-17). Nas duas ações vale a trava do último administrador ativo (RN-CORE-01). (c) O e-mail de usuário excluído pode ser reutilizado, com índice único por tenant em e-mail normalizado WHERE deleted_at IS NULL; o de usuário inativo, não. (d) Entra na v0.3.28, depois do "aprovado" do Alexandre na simulação da Config. O banco-dados (migração 0078) e o modulo-core (contratos e rotas) podem começar antes, porque não dependem do visual. Estimativa do modulo-core, dono + 15%: ~3,5 h no caminho crítico, com o banco e o core em paralelo.
