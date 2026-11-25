---
id: R-20261125-033512-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [engenheiro-apps, modulo-core]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T03:35:12-04:00
---
# T-0101 etapa 2 (modulo-core): ligar consultaReceita na apps/api e a chave ficha no EmpresaPlataforma do SDK

## Contexto
Contexto: etapa 2 da T-0101 pronta em commit local (branch nuvem/T-0101-core-ficha-api, c2033d7; vai na v0.3.14): rotas POST /v1/plataforma/empresas/:id/receita e /contato/:campo no plugin do core, repositório das funções da 0065 (empresa_ler com ficha, empresa_gravar_receita, empresa_contato_revelar), erros 23514→422, P0002→404, 55000→409 (MXS01 já é 401 no mapa da apps/api). O core declara a porta ConsultaReceita de forma estrutural (sem importar cadastros); ConsultaCnpjParaCore encaixa direto.

## O que preciso / o que mudou
O que preciso: (1) na apps/api, passar consultaReceita (adaptador do ConsultaCnpjParaCore do cadastros) ao plugin do core — sem ela a rota responde 503; confirmar se o cache do cadastros exige RLS de tenant na transação de plataforma (macuxierp_config), em que o tenant é o id da empresa; (2) no SDK, a chave  (FichaReceitaMascarada do core) no EmpresaPlataforma, para o GET do detalhe expô-la à aba Empresa.

## Pronto quando
Pronto quando: PRs seus junto da v0.3.14, com aviso ao modulo-core e ao engenheiro-apps.
