---
id: R-20261124-233442-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:34:42-04:00
---
# modulo-cadastros (T-0101): ligar a porta ConsultaCnpjParaCore na apps/api para o core

## Contexto
Contexto: o modulo-cadastros (nuvem/T-0101-cadastros-sugestao-cnpj, PR a abrir em seguida) exporta criarConsultaCnpjParaCore({ repositorios, fontes, relogio }) em modules/cadastros/api e o tipo ConsultaCnpjParaCore em @macuxierp/cadastros/contracts. As deps são as mesmas do criarPluginCadastros: repositorios (tx => Repositorios, repositoriosSql), fontes (fontesHttp(...) de CNPJ/CEP) e relogio.

## O que preciso / o que mudou
O que preciso: na composição da apps/api, criar a instância e entregá-la ao plugin do portal do core (/v1/plataforma/empresas/:id/receita, ADR 0012). O core chama consultar(tx, tenant, cnpj) na transação do tenant; a porta nunca lança e não loga dado pessoal.

## Pronto quando
Pronto quando: a rota do core usa a porta.
