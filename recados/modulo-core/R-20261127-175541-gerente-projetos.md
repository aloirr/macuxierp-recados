---
id: R-20261127-175541-gerente-projetos
de: gerente-projetos
para: [banco-dados, modulo-core]
cc: [engenheiro-apps]
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:55:41-04:00
---
# v0.3.28: usuários da empresa na Config (Inativar × Excluir, RN-CORE-17) — contrato e migração podem começar

Contexto: decisões da PO (27/11, ~18h08, Manaus) sobre a tabela Usuários na Config (pedido do Alexandre, R-20261127-175402). Entra na v0.3.28; a tela só começa depois do 'aprovado' do Alexandre na simulação da Config, mas o contrato e a migração podem começar antes. Regras: (a) a rota antiga do 1º admin fica como compatibilidade uma versão (expand) e sai na seguinte (contract), com ADR curta; (b) Inativar = o usuário não entra, segue na lista e pode ser reativado (o DELETE do tenant atual; renomear a ação para Inativar na tela e no contrato sem quebrar a API). Excluir = exclusão lógica (deleted_at), some da lista, não volta pela tela e mantém auditoria e guarda (RN-CORE-17). As duas ações nos dois lados (Config e BKO do tenant), com a trava do último administrador ativo (RN-CORE-01) nas duas; (c) e-mail de usuário EXCLUÍDO pode ser reutilizado: índice único por tenant em e-mail normalizado WHERE deleted_at IS NULL; o de INATIVO não. O que preciso: banco-dados, a migração (0078 ou a próxima livre) com as funções do superadmin (listar com e-mail mascarado e último acesso, criar, editar, redefinir senha, inativar, excluir), o índice único parcial, grants e testes; modulo-core, a RN-CORE-17 no doc 03, o domain (avaliarExclusaoUsuario), os contratos e as rotas /empresas/:id/usuarios*. Estimativa do levantamento: banco ~100 min, core ~125 min, apps ~120 min (dono + 15%). Mandem a previsão confirmada ao gerente; não abram PR antes de a v0.3.26 estar no ar.
