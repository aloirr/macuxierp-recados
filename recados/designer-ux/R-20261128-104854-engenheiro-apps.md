---
id: R-20261128-104854-engenheiro-apps
de: engenheiro-apps
para: [designer-ux]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T10:48:54-04:00
---
# RD-2440: exportar do packages/ui os helpers do teclado do MenuAcoes

## Contexto
Contexto: o apps/web/src/components/menu-usuario.tsx reimplementa as setas, Home, End, Esc, Tab e o clique fora que o MenuAcoes já tem (packages/ui/src/MenuAcoes.tsx:42-98). Esses helpers puros existem, mas só o MenuAcoes e os tipos saem do packages/ui/src/index.ts, então o shell não pode importá-los.

## O que preciso / o que mudou
O que preciso: exportar no index.ts do packages/ui (ou em subpath ./menu): proximoItemMenu, cliqueFora, acaoTeclaMenu, acaoTeclaGatilho e o tipo TeclaMenu. Se preferir, um hook useMenuSuspenso (aberto, gatilho, lista, teclas) que o MenuAcoes e o menu do usuário usem juntos.

## Pronto quando
Pronto quando: os nomes saem do @macuxierp/ui; o engenheiro-apps troca o código do menu-usuario.tsx na rodada seguinte, sem mudar o visual nem o teste do menu.
