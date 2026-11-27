---
id: R-20261127-172614-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:26:14-04:00
---
# v0.3.25 no ar: conferir a reentrega dos cnpj_alterado da 0077 (só leitura)

Contexto: a v0.3.25 entrou no ar às 17h20 (Manaus). O worker novo subiu às 17h20m20 e, na partida, reentrega os core.empresa.cnpj_alterado@1 da carga da 0077 (#867). O log do publicar não traz o log do worker. O que preciso: por consulta de leitura no banco de produção, ou dizendo exatamente a consulta para eu levar ao Alexandre, confira (1) quantos eventos core.empresa.cnpj_alterado@1 existem em plataforma.evento e quantos têm linha de consumo do consumidor cadastros.cnpj-empresa, e (2) quantas filiais padrão estão com o CNPJ igual ao da empresa. Sem dado pessoal na resposta, só contagens. Pronto quando: as contagens baterem (todos os eventos consumidos), ou se disser o que falta.
