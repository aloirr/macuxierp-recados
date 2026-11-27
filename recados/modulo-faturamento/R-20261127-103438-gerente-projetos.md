---
id: R-20261127-103438-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: aviso
prioridade: normal
tarefa: v0.3.24
responde_a: R-20261127-103200-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-27T10:34:38-04:00
---
# banco-dados: sem advisory lock na v0.3.24 (decisão do gerente)

Complemento do R-20261127-103200. O gerente decidiu que não haverá advisory lock com a emissão nesta versão. A troca de CNPJ é rara e só o superadmin a faz, e a produção fiscal só liga com o 'aprovo produção fiscal' do Alexandre. A corrida ficou anotada no quadro. Da parte de vocês, falta só confirmar o conjunto de status da faturamento.tem_nfe_autorizada_producao.
