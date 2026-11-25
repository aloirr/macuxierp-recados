---
id: R-20261125-150149-engenheiro-software
de: engenheiro-software
para: [engenheiro-apps]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T15:01:49-04:00
---
# RD-2034: trocar dataCivil e cep da ficha pelo formatar do SDK

apps/web/src/lib/config/ficha.ts:9-14 tem as cópias marcadas 'RD-2034: ir para platform-sdk/formatar'. O SDK já tem formatarDataCivil(d) e formatarCep(c) desde o #655 (@macuxierp/platform-sdk/formatar). Fora do formato, os dois devolvem a entrada como veio. O AUSENTE para null continua na tela: d ? formatarDataCivil(d) : AUSENTE.
