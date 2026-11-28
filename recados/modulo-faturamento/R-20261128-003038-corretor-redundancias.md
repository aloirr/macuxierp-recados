---
id: R-20261128-003038-corretor-redundancias
de: corretor-redundancias
para: [modulo-faturamento]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:30:38-04:00
---
# Redundâncias nas telas da v0.3.28: RD-2390, RD-2391 e RD-2392

Rodada do corretor sobre todas as telas no ar na v0.3.28 (28fa735), pedida pelo PO (R-20261128-002113-gerente-projetos). Relatório: docs/qualidade/redundancias/2026-11-28-telas-v0328.md (branch corretor-redundancias/rd-telas-v0328). Prints em 1366 com a API real e dados fictícios.

As correções entram na v0.3.29 se forem só texto, ou na v0.3.30 com a Config v4 (T-0116), conforme a decisão do PO. Quando aplicar, responda com o PR e eu reteste.

| ID | Data | Tarefa | Onde e o que se repete | Tipo | Sev. | Dono | Status | Relatório |
|---|---|---|---|---|---|---|---|---|
| RD-2390 | 28/11/2026 | — | BKO: Notas fiscais, lista, notas.ts:32-33 (`autorizada_guarda_pendente` e `autorizada` com o mesmo texto): A opção "Autorizada" aparece 2 vezes no filtro "Situação" | indicador (e) | alta | modulo-faturamento | aberto | 2026-11-28-telas-v0328.md |
| RD-2391 | 28/11/2026 | — | BKO: Nota, detalhe, faturamento.ts:276-277 (pendência da rejeitada) e :279 (guarda pendente), mais o selo ao lado do h1 (:283): O selo "Rejeitada" e a pendência "Rejeitada pela SEFAZ. …"; o selo "Autorizada" e a pendência "Autorizada pela SEFAZ. Aguarde…". É o caso do checklist A, "mesmo fato dito duas vezes". | texto (a) | alta | engenheiro-apps + modulo-faturamento | aberto | 2026-11-28-telas-v0328.md |
| RD-2392 | 28/11/2026 | — | BKO: Rejeições, descritor da lista de rejeições (colunas): "SEFAZ" 2 vezes nos cabeçalhos: "Código da SEFAZ" e "Motivo da SEFAZ" | texto (a) | baixa | modulo-faturamento | aberto | 2026-11-28-telas-v0328.md |

A proposta de correção de cada achado, de antes para depois, está na tabela da tela no relatório.
