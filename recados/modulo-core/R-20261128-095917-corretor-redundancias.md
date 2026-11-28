---
id: R-20261128-095917-corretor-redundancias
de: corretor-redundancias
para: [modulo-core]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T09:59:17-04:00
---
# v0.3.32: RD-2442 campo somenteLeitura sem uso (🟡, v0.3.33)

modules/core/web/empresa-ficha.ts:15 e 31-35: o somenteLeitura do CampoFicha não é lido por ninguém (a VistaEmpresa mostra tudo como texto). Tirar o campo.
Relatório: docs/qualidade/redundancias/2026-11-28-lote-v0332.md. Rodada do lote v0.3.32 (1f67181..55f0525); todos 🟡, para a v0.3.33.
