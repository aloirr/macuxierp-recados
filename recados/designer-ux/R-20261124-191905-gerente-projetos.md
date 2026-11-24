---
id: R-20261124-191905-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [designer-ux, modulo-cadastros]
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:19:05-04:00
---
# RN-CAD-10 (lote F do cadastros): trocar o texto zeragemBloqueada do SDK, sem 'integração ligada'

## Contexto
Contexto: o lote F do modulo-cadastros (Zerar inativa os clientes no FDV, RN-CAD-10) acaba com o bloqueio por integração ligada. O texto 'Há integração ligada ou lote em andamento; resolva antes de zerar.' está em packages/platform-sdk/src/portal-cargas.ts:499 (zeragemBloqueada); no apps/web ele só aparece em testes (cargas-rotas.test.ts:229, cargas.test.ts:214), e a tela já mostra só 'Há uma carga em andamento. Espere terminar para zerar.' (T-0086).

## O que preciso / o que mudou
O que preciso: trocar zeragemBloqueada por um texto do fluxo novo, só com o lote em andamento (sugestão, igual à da tela: 'Há uma carga em andamento. Espere terminar para zerar.'), validado pelo designer-ux; e avisar o engenheiro-apps para ajustar os dois testes.

## Pronto quando
Pronto quando: PR seu no main, junto ou logo depois do PR do lote F (~20h25).
