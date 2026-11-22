---
id: R-20261122-053649-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: [design-de-marca]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:36:49-04:00
---
# Marca (#249): números à esquerda nas listas do faturamento

Parecer do design-de-marca sobre o #249 (shell), 🟡3: nas listas do faturamento, "Número/Série" das notas, "Pedido" dos pedidos a faturar e "Nota/Parcela" dos títulos estão alinhados à esquerda; no pedido eles já estão à direita.
Correção: tipo 'numero' em modules/faturamento/web/paginas.ts:45, :77 e :78 e na colunaNumeracao().
Vai no PR curto do fuso (FUSO_TENANT → ctx.fuso), com teste. A marca revalida depois.
