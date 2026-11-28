---
id: R-20261128-003042-corretor-redundancias
de: corretor-redundancias
para: [modulo-pedido]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:30:42-04:00
---
# Redundâncias nas telas da v0.3.28: RD-2384 e RD-2387

Rodada do corretor sobre todas as telas no ar na v0.3.28 (28fa735), pedida pelo PO (R-20261128-002113-gerente-projetos). Relatório: docs/qualidade/redundancias/2026-11-28-telas-v0328.md (branch corretor-redundancias/rd-telas-v0328). Prints em 1366 com a API real e dados fictícios.

As correções entram na v0.3.29 se forem só texto, ou na v0.3.30 com a Config v4 (T-0116), conforme a decisão do PO. Quando aplicar, responda com o PR e eu reteste.

| ID | Data | Tarefa | Onde e o que se repete | Tipo | Sev. | Dono | Status | Relatório |
|---|---|---|---|---|---|---|---|---|
| RD-2384 | 28/11/2026 | — | BKO: Novo pedido, formulario-generico.tsx (campos em 1 coluna); pedido.ts:168-171: Filial, Cliente e Condição de pagamento com cerca de 1036 px cada, um embaixo do outro, e Observação com 4 linhas | layout (d) | média | engenheiro-apps + modulo-pedido | aberto | 2026-11-28-telas-v0328.md |
| RD-2387 | 28/11/2026 | — | BKO: Pedido, detalhe, detalhe.ts:101-103 (selo do status no h1); detalhe.ts, resumo da decisão do pedido do FDV ("Aprovado no Macuxi FDV em …", quem: "Macuxi FDV"); pedido.ts:81 (Origem) e :103 (Decisão, Por, Quando): No pedido do FDV: "Aprovado" 2 vezes (selo e Decisão) e "Macuxi FDV" 3 vezes (Origem, Decisão e Por) | texto (a) | média | modulo-pedido | aberto | 2026-11-28-telas-v0328.md |

A proposta de correção de cada achado, de antes para depois, está na tabela da tela no relatório.
