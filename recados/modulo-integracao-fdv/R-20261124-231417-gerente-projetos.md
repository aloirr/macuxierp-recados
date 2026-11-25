---
id: R-20261124-231417-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:14:17-04:00
---
# T-0099: ação principal por situação no monitor e no log do FDV

## Contexto
Contexto

## O que preciso / o que mudou
O MenuAcoes está no main (#606, 623a7fd), em packages/ui/src/MenuAcoes.tsx. A API está em docs/design/menu-acoes.md e a regra em docs/marca/botao-acoes.md (#605): no máximo uma ação principal à vista, escolhida pela situação da linha; perigo (Zerar, Desativar, Inativar, Excluir, Cancelar, Inutilizar) por último e em vermelho. A troca das telas fica com o engenheiro-apps (R-20261124-231350).

## Pronto quando
O que preciso | Em modules/integracao-fdv/web/monitor.ts e log.ts, defina a principal da linha pela situação: com falha, Reprocessar; Pausada, Retomar; senão, Log. Zerar fica por último, como perigo. A tela é a apps/web/src/app/config/(portal)/empresas/[id]/aba-integracao.tsx:103-130, do engenheiro-apps, que hoje mostra uma fileira de botões com minWidth 480. | Pronto quando | A função pura da principal por situação tem teste e PR verde e foi combinada com o engenheiro-apps.
