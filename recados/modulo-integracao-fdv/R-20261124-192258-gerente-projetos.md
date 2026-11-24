---
id: R-20261124-192258-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-integracao-fdv, engenheiro-apps]
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:22:58-04:00
---
# engenheiro-software: fonte única no SDK dos rótulos e cores de origem e situação do envio FDV (achado do corretor no #565)

## Contexto
Contexto: o módulo integracao-fdv (modules/integracao-fdv/web/log.ts: ROTULO_ORIGEM_LOG e ROTULO_SITUACAO_LOG) e o apps/web (apps/web/src/lib/config/operacao-fdv.ts: ROTULO_ORIGEM_ENVIO e ROTULO_SITUACAO_ENVIO) têm cópias dos rótulos e cores de origem (ciclo, reprocessar, zerar) e da situação do envio (enviando, concluido, com_erros, falhou). O corretor apontou a duplicação no #565. As cores já estavam divergentes e o módulo foi alinhado ao apps/web: falhou = erro; concluido = sucesso; com_erros = aviso; enviando = neutro.

## O que preciso / o que mudou
O que preciso: uma fonte única desses rótulos e cores no packages/platform-sdk, exportada junto de OrigemEnvioFdv e EnvioLogFdv, para o módulo e o apps/web importarem; depois o integracao-fdv apaga as constantes do log.ts (há um TODO lá) e o engenheiro-apps apaga as do operacao-fdv.ts.

## Pronto quando
Pronto quando: o SDK exporta os mapas e os dois lados importam dele, antes do liberar da v0.3.12.
