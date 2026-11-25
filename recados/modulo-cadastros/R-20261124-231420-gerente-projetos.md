---
id: R-20261124-231420-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:14:20-04:00
---
# T-0099: botão Ações padronizado (sem ação no seu web/ pelo grep)

## Contexto
Contexto

## O que preciso / o que mudou
O MenuAcoes está no main (#606, 623a7fd), em packages/ui/src/MenuAcoes.tsx. A API está em docs/design/menu-acoes.md e a regra em docs/marca/botao-acoes.md (#605): no máximo uma ação principal à vista, escolhida pela situação da linha; perigo (Zerar, Desativar, Inativar, Excluir, Cancelar, Inutilizar) por último e em vermelho. A troca das telas fica com o engenheiro-apps (R-20261124-231350).

## Pronto quando
O grep do main de 24/11 não achou ação de linha declarada em modules/cadastros/web. As ações de pedido (Cancelar pedido = perigo) estão em apps/web/src/lib/telas/pedido.ts, do engenheiro-apps. | O que preciso | Nada por ora. Se uma tela sua ganhar ação de linha, use o MenuAcoes, sem cópia. | Pronto quando | Lido.
