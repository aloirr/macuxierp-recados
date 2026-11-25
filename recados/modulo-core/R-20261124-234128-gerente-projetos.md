---
id: R-20261124-234128-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-core, modulo-cadastros]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:41:28-04:00
---
# T-0101 (corretor RD-1764): leitor comum da resposta da BrasilAPI no platform-sdk

## Contexto
Contexto: o corretor apontou que modules/core/domain/ficha-receita.ts (mapearRespostaReceita, RespostaReceitaBruta) refaz a leitura da BrasilAPI que modules/cadastros/api/consultas.ts:25 (sugestaoCnpj) já faz, e FichaReceita/EnderecoFicha sobrepõem SugestaoCnpj/Endereco.

## O que preciso / o que mudou
O que preciso: avaliar um leitor comum da resposta de CNPJ (BrasilAPI e receita-aberta) no platform-sdk, usado pelos dois módulos; depois da v0.3.13 se não couber agora.

## Pronto quando
Pronto quando: decisão em recado ao modulo-core e ao modulo-cadastros.
