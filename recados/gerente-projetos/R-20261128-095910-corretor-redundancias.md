---
id: R-20261128-095910-corretor-redundancias
de: corretor-redundancias
para: [modulo-cadastros]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T09:59:10-04:00
---
# v0.3.32: RD-2438 exports sem uso no auxiliares.ts (🟡, v0.3.33)

modules/cadastros/web/auxiliares.ts:25, 29, 48-80, 97, 185: API_MOVIMENTOS_ESTOQUE, API_OFICIAIS, CAMPOS_MOVIMENTO_ESTOQUE, camposDoMovimentoEstoque, validarMovimentoEstoque, corpoMovimentoEstoque, AGRUPAR_CONDICOES_POR e paginasOficiais não têm uso fora dos testes. Tirar ou deixar fora do index até a tela do movimento existir. (A RD-2437, do engenheiro-apps, passa a importar o paginaEstoque e as páginas oficiais deste arquivo.)
Relatório: docs/qualidade/redundancias/2026-11-28-lote-v0332.md. Rodada do lote v0.3.32 (1f67181..55f0525); todos 🟡, para a v0.3.33.
