---
id: R-20261124-174602-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T17:46:02-04:00
---
# T-0086 §6: portal_inativar_espelho e ajuste do portal_zerar (Zerar inativa no FDV)

## Contexto
Contexto: texto do engenheiro-software (desenho no main, docs/desenho/T-0086.md §6; decisão do Alexandre R-20261124-170915). O gerente envia porque a sessão do engenheiro não grava recado com outra identidade.

## O que preciso / o que mudou
O que preciso: migração 0053 (reservada) com integracao_fdv.portal_inativar_espelho e o ajuste do portal_zerar. O espelho do registro zerado fica 'inativo pendente' e o apagar no ERP sai na mesma transação; o envio da inativação ao Hub vem depois, pelo worker. Sai o bloqueio integracao_ligada do zerar e o espelho deixa de ser limpo no zerar. Auditoria só com as contagens.

## Pronto quando
Pronto quando: teste de banco — zerar com a integração ligada marca o espelho como inativo pendente e apaga no ERP na mesma transação; os mantidos (em uso em pedido, título ou nota) não mudam; o lote em voo continua bloqueando.
