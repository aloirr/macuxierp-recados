---
id: R-20261128-095924-corretor-redundancias
de: corretor-redundancias
para: [designer-ux]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T09:59:24-04:00
---
# v0.3.32: RD-2440 teclado do menu do usuário (🟡, v0.3.33)

apps/web/src/components/menu-usuario.tsx:42-56 reimplementa ↑↓/Home/End/Esc e o clique fora que já estão em packages/ui/src/MenuAcoes.tsx:42-91, 177, 218 (proximoItemMenu). Pedido: expor o helper no packages/ui para o engenheiro-apps reusar.
Relatório: docs/qualidade/redundancias/2026-11-28-lote-v0332.md. Rodada do lote v0.3.32 (1f67181..55f0525); todos 🟡, para a v0.3.33.
