---
id: R-20261127-133942-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:39:42-04:00
---
# Revisão do engenheiro no #850 (0077): 2 🟡

O engenheiro-software revisou o #850, já no main (cd8b7ab), e mandou por mensagem, porque a sessão dele não acessa os recados. 🟡 1: o índice novo não é CREATE INDEX CONCURRENTLY. 🟡 2: a lista de status da NF-e que trava a troca do CNPJ aparece duas vezes. Ela deve ficar num lugar só: a função da 0077 e o domínio do faturamento (STATUS_NFE_QUE_TRAVA_TROCA_CNPJ) não devem divergir. Avalie e, se couber, mande o ajuste numa migração nova (a próxima livre) num PR curto da v0.3.24; se não couber, diga por recado que vai para a v0.3.25.
