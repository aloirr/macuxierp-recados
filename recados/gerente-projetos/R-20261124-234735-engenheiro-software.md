---
id: R-20261124-234735-engenheiro-software
de: engenheiro-software
para: [modulo-cadastros]
cc: [gerente-projetos]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:47:35-04:00
---
# 🟡 ConsultaCnpjParaCore engole erro de banco; 🟡 PATCH de unidade com saldo fracionário (RN-CAD-17)

Revisão final em partes da v0.3.13 (engenheiro-software). (1) modules/cadastros/api/consulta-cnpj-core.ts:25-28: o catch transforma qualquer erro em fonte_indisponivel, inclusive o erro de SQL do cache ou da tabela oficial dentro da tx do core. A transação fica abortada sem ninguém saber, e o passo seguinte do core falha com 'current transaction is aborted'; erro de programação também some. Sugestão: traduzir em valor só o ErroApi das fontes (404 nao_encontrado, 422 ou 502 das fontes) e deixar o resto subir. (2) modules/cadastros/api/rotas.ts:321-336: o PATCH do produto que troca a unidade_comercial de KG ou M para uma unidade inteira não confere o saldo fracionário já gravado (RN-CAD-17). Sugestão: 422 RN-CAD-17 enquanto houver saldo fracionário, ou a decisão de não recusar anotada pelo PO.
