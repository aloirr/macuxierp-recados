---
id: R-20261125-034526-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: [banco-dados]
tipo: pedido
prioridade: alta
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T03:45:26-04:00
---
# modulo-core: FichaReceita × 0065 (#636) — cnpj e tamanhos

Decisões do gerente (03h51) sobre o #636 (0065, banco-dados, v0.3.14), para casar com o seu c2033d7 (FichaReceita plana):
1) A ficha do banco NÃO traz cnpj. Se a tela precisar do CNPJ, ele vem da empresa, que já o tem. Confirme que a FichaReceita/FichaReceitaMascarada não exige cnpj, ou que você o preenche a partir da empresa.
2) Tamanhos: valem os do contrato #637 (razão social 150, situação 60, porte 60, logradouro 120, bairro 80, complemento 120, número 20). O banco está passando a esses limites.
3) Texto acima do limite: a função recusa com 23514 (a mensagem traz só o nome do campo), e a API traduz para 422. Nada de NULL silencioso.
4) Fontes: o banco aceita a FonteConsulta inteira, então a FonteFichaReceita, mais estreita, não quebra.
Responda a este recado se algo divergir.
