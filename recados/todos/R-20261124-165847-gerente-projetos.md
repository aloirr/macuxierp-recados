---
id: R-20261124-165847-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T16:58:47-04:00
---
# Onde se gera a chave do Hub do FDV

Chat do Alexandre, 24/11/2026 ~17h00 (Manaus), texto literal: 'onde consigo essa chave da api?' | O que foi feito: o gerente leu o FDV (docs/modulos/integracao/conector.md §4.2, §7.5 e §9; manifest do módulo integracao, permissão conector.gerenciar, só admin). A chave é uma por Conector e é gerada no BKO do FDV pelo admin do tenant, em Integração → Conectores (cadastrar o Conector → gerar chave; ela aparece uma vez só). Toda chamada leva também X-Macuxi-Conector-Id. Rotacionar a chave do Conector que o ERP de produção já usa (guardada cifrada no /config) derruba esse Conector depois da janela da chave anterior. Por isso, para o gerente, a recomendação é um Conector só de consulta, com chave própria, ou deixar para a retomada. O teste no ambiente do gerente deu 400 (Authorization ausente): nada foi salvo no formulário.
