---
id: R-20261125-041459-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: [modulo-core]
tipo: pedido
prioridade: alta
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:14:59-04:00
---
# banco-dados (pedido do modulo-core): a ficha aceita nome_fantasia com 150 na 0063?

Pedido do modulo-core (T-0101 etapa 2). O contrato FichaReceita do core passou o nome_fantasia para 150, igual a core.empresa, que o #636 alargou. Confirme que plataforma.empresa_gravar_receita e a coluna ou CHECK que guarda o nome_fantasia da ficha aceitam 150 na 0063. Se o limite for 60, diga, e o core volta o contrato para 60 (passando disso, a gravação sai com 422). O gerente aprovou o 150 às 04h17.
