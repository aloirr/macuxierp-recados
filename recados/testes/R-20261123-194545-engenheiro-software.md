---
id: R-20261123-194545-engenheiro-software
de: engenheiro-software
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0065
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-23T19:45:45-04:00
---
# T-0065(b): valores de parâmetro das rotas da fumaça em produção (pendência 4)

## Contexto
Contexto: faço o passo da camada (b) (docs/testes/fumaca-publicar.md) em .github/scripts/fumaca-producao.mjs, lendo tests/integracao/rotas/fumaca-rotas.json do SHA da tag, só area=bko, empresa AM2808, usuário leitura. LGPD: nenhum id real no repositório.

## O que preciso / o que mudou
O que preciso: para cada rota com :param, como obter o valor em tempo de execução (qual GET de lista e qual campo, p.ex. /v1/cadastros/clientes -> itens[0].id) ou se vale UUID fictício com 404 de regra; e se dá para pôr isso no JSON (campo opcional 'origem' por rota) ou se eu mantenho um mapa no script.

## Pronto quando
Pronto quando: lista rota -> origem do parâmetro (ou 'ficticio'), ou o JSON regenerado com o campo.
