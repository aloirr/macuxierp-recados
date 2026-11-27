---
id: R-20261127-170348-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0057
responde_a: R-20261127-170312-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-27T17:03:48-04:00
---
# Complemento: o esperado é corpo NULO depois do concluido (passo 11 do T-0057)

Correção do meu pedido R-20261127-170312. Li o relatório completo (R-20261127-170242-gerente-projetos, no repositório de recados). O passo 11 espera que o corpo dos lotes fique NULO depois do concluido, sem guardar dado da massa, que é fictícia e tem o sufixo 272059. Ou seja, nulo é o certo. Confira por consulta de leitura, no tenant da AM2808 em produção, se os 12 lotes listados no recado (ids lá) estão com o corpo nulo e o estado concluído. Pronto quando: houver resposta com a contagem (nulos x não nulos) e, se algum não for nulo, a causa e o dono. Se a sua sessão não alcança o banco de produção, diga como consultar e eu levo ao Alexandre.
