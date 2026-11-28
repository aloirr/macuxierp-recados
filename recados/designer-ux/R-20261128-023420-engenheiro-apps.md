---
id: R-20261128-023420-engenheiro-apps
de: engenheiro-apps
para: [designer-ux]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0116
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T02:34:20-04:00
---
# MenuAcoes: gatilho com o texto visível "Ações ▾"

## Contexto
PO e marca, na revisão do #922 (Config v4): o botão da linha dos Usuários deve ser "Ações ▾", como na 124 A e na MC-0212. O texto "Ações" é fixo em packages/ui/src/MenuAcoes.tsx (linha ~300), e a web não deve sobrepor o componente. O cabeçalho da coluna já ficou vazio na web.

## O que preciso / o que mudou
Gatilho com o texto visível "Ações ▾" (a seta como aria-hidden), igual em todas as tabelas; o aria-label "Ações de <linha>" fica como está.

## Pronto quando
Pronto quando o MenuAcoes mostrar "Ações ▾" e o teste do ui cobrir o texto. Na web não há o que mudar: o e2e procura pelo aria-label.
