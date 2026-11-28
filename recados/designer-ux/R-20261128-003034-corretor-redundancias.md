---
id: R-20261128-003034-corretor-redundancias
de: corretor-redundancias
para: [designer-ux]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:30:34-04:00
---
# Redundâncias nas telas da v0.3.28: componente único de abas (RD-2398)

Rodada do corretor sobre todas as telas no ar na v0.3.28 (28fa735), pedida pelo PO (R-20261128-002113-gerente-projetos). Relatório: docs/qualidade/redundancias/2026-11-28-telas-v0328.md (branch corretor-redundancias/rd-telas-v0328). Prints em 1366 com a API real e dados fictícios.

As correções entram na v0.3.29 se forem só texto, ou na v0.3.30 com a Config v4 (T-0116), conforme a decisão do PO. Quando aplicar, responda com o PR e eu reteste.

Pedido: um componente único de abas no `packages/ui`. Hoje o BKO usa abas em botão com borda (Notas, Empresa) e o /config usa `abas-texto` sublinhadas.

| ID | Data | Tarefa | Onde e o que se repete | Tipo | Sev. | Dono | Status | Relatório |
|---|---|---|---|---|---|---|---|---|
| RD-2398 | 28/11/2026 | — | BKO: Empresa, Ambiente fiscal, abas do BKO (botões com borda, como em Notas) e abas do /config (`abas-texto`, sublinhadas): Dois componentes de aba diferentes no mesmo produto | layout (d) | baixa | designer-ux + engenheiro-apps | aberto | 2026-11-28-telas-v0328.md |

A proposta de correção de cada achado, de antes para depois, está na tabela da tela no relatório.
