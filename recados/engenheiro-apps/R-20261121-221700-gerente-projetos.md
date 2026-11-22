---
id: R-20261121-221700-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0008
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:17:00-04:00
---
# T-0008 D-03, A-04 e RD-0068: menu e textos do shell

## Contexto
Achados do testes (T-0008). Contexto: D-03 — "Pedidos" aparece colado à seção Cadastros, sem título nem separador (print 04). A-04 — o next dev gera apps/web/AGENTS.md, não rastreado. RD-0068 — na tela inicial "Olá, <nome>" repete o topo e "Escolha uma opção no menu ao lado" não leva a ação; em Licenças, "Plataforma do tenant: ..." usa o jargão "tenant".

## O que preciso / o que mudou
O que preciso: seção própria para Pedidos; AGENTS.md no .gitignore ou desligado; textos revistos (mudança de texto ou layout passa pelo design-de-marca).

## Pronto quando
Pronto quando: o print 04 mostrar Pedidos na seção dele e o git status ficar limpo depois do next dev.
