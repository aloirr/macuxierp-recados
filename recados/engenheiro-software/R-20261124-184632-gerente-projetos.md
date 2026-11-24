---
id: R-20261124-184632-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:46:32-04:00
---
# engenheiro-software: RD-1564, ADR 0013 com a ordem antiga do Zerar e a portal_zerar_espelho sem T de remoção

## Contexto
Contexto: corretor no #547 (0053). A portal_zerar_espelho fica ao lado da nova portal_inativar_espelho (regra aditiva), mas nenhuma tarefa registra a remoção, e docs/decisoes/0013-integracao-fdv-no-portal.md:151 ainda descreve a ordem antiga (limpar o espelho).

## O que preciso / o que mudou
O que preciso: anotar na ADR 0013 que, desde a 0053 (T-0086 §5), o Zerar inativa o espelho em vez de limpar. O gerente reserva a T de remoção da portal_zerar_espelho quando o cadastros parar de chamá-la.

## Pronto quando
Pronto quando: ADR anotada.
