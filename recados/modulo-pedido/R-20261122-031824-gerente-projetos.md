---
id: R-20261122-031824-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: [engenheiro-software]
tipo: aviso
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:18:24-04:00
---
# Cancelamento com nota autorizada não aplicada (D-01/D-02) e ligação da porta

Em nome do testes. O cancelar (servico.ts:451) confia só no temNotaEmAutorizacao, e o consumidor-nota depois só alerta status_invalido. Em produção, a porta ligada é semNotaEmAberto (pedido/api/index.ts:30 e apps/api/src/modulos.ts:88).
O que preciso: combinar com o faturamento a regra de "nota aplicada" e ligar o notaEmAbertoSql com o engenheiro, em modulos.ts:88.
Pronto quando: [D-01] e [D-02] ficarem vermelhos.
