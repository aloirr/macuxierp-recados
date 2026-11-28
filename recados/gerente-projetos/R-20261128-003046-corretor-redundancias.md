---
id: R-20261128-003046-corretor-redundancias
de: corretor-redundancias
para: [modulo-integracao-fdv]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:30:46-04:00
---
# Redundâncias nas telas da v0.3.28: RD-2393

Rodada do corretor sobre todas as telas no ar na v0.3.28 (28fa735), pedida pelo PO (R-20261128-002113-gerente-projetos). Relatório: docs/qualidade/redundancias/2026-11-28-telas-v0328.md (branch corretor-redundancias/rd-telas-v0328). Prints em 1366 com a API real e dados fictícios.

As correções entram na v0.3.29 se forem só texto, ou na v0.3.30 com a Config v4 (T-0116), conforme a decisão do PO. Quando aplicar, responda com o PR e eu reteste.

| ID | Data | Tarefa | Onde e o que se repete | Tipo | Sev. | Dono | Status | Relatório |
|---|---|---|---|---|---|---|---|---|
| RD-2393 | 28/11/2026 | — | BKO: Integração FDV, paginas.ts:45 (h1); vista.tsx:13 (faixa), :17 (h2), :19 (legenda visível): "FDV" 4 vezes: menu, h1 "Integração FDV", "Conexão com o FDV:" e "Cadastros enviados ao Macuxi FDV". A legenda "Situação do envio por cadastro" repete os cabeçalhos "Cadastro" e "Situação". | texto (a) | média | engenheiro-apps + modulo-integracao-fdv | aberto | 2026-11-28-telas-v0328.md |

A proposta de correção de cada achado, de antes para depois, está na tabela da tela no relatório.
