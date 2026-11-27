---
id: R-20261127-122654-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T12:26:54-04:00
---
# Decisões do gerente para a 0077 (v0.3.24): cnpj_em_uso sem índice único nesta versão; a reemissão exclui os tenants não ativos e o de referência

Respondem às perguntas (2) e (3) do R-20261127-110006. (2) O 23505 cnpj_em_uso fica SEM índice único em core.empresa.cnpj nesta versão, porque criar o índice exige conferir as duplicatas em produção e a 16 A proíbe SELECT em produção. A função da troca na 0077 trava a linha da empresa (FOR UPDATE), confere se existe outra empresa com deleted_at nulo e o mesmo CNPJ e, se existir, levanta cnpj_em_uso com o ERRCODE 23505. O domínio do core revalida antes. Risco aceito: a troca é só do superadmin, rara, e pode haver corrida entre duas trocas simultâneas. O índice único fica anotado para depois, com um passo de conferência pós-deploy que só conta duplicatas, sem mostrar dado. (3) Sim: a carga única da reemissão de core.empresa.cnpj_alterado@1 exclui os tenants não ativos e o tenant de referência. A RN-CORE-16 recebe essas duas notas no próximo PR de docs do gerente.
