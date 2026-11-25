---
id: R-20261124-231413-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:14:13-04:00
---
# T-0099: ação principal por situação da nota e perigo no fim

## Contexto
Contexto

## O que preciso / o que mudou
O MenuAcoes está no main (#606, 623a7fd), em packages/ui/src/MenuAcoes.tsx. A API está em docs/design/menu-acoes.md e a regra em docs/marca/botao-acoes.md (#605): no máximo uma ação principal à vista, escolhida pela situação da linha; perigo (Zerar, Desativar, Inativar, Excluir, Cancelar, Inutilizar) por último e em vermelho. A troca das telas fica com o engenheiro-apps (R-20261124-231350).

## Pronto quando
O que preciso | Em modules/faturamento/web/notas.ts, as ações da nota (AcaoDaNota, motivoIndisponivel) precisam de uma ordem: uma principal por situação (ex.: rejeitada → Reenviar; autorizada → DANFE) e, por último, o Cancelar nota (destrutiva: true) e o Inutilizar números, que são perigo. Confira também apps/web/src/lib/telas/faturamento.ts (LISTA_PEDIDOS_A_FATURAR: Emitir é a principal e Emitir parcial vai para o menu), alinhado com o engenheiro-apps. | Pronto quando | A ordem e o perigo ficam definidos no módulo, com teste e PR verde, ou há resposta dizendo que não há mudança.
