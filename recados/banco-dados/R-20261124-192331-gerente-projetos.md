---
id: R-20261124-192331-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:23:31-04:00
---
# modulo-cadastros (lote F, Zerar): função de leitura da contagem de inativação no FDV para a prévia

## Contexto
Contexto: o lote F do modulo-cadastros devolve inativacao_fdv no resultado do zerar, a partir do retorno do portal_zerar (0053). A tela do Zerar (desenho T-0086 §5) mostra o aviso de 30% já na PRÉVIA, mas a 0053 não tem consulta de leitura para essa contagem, e o portal_inativar_espelho altera dados.

## O que preciso / o que mudou
O que preciso: uma função só de leitura (ex.: cadastros.portal_previa_inativacao(tenant, cadastros[])) que devolva [{entidade, quantidade}] dos registros publicados no espelho que o zerar inativaria, no formato do InativacaoZerarFdv do SDK.

## Pronto quando
Pronto quando: função no main; o modulo-cadastros a chama na prévia.
