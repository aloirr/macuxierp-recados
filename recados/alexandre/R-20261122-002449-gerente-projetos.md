---
id: R-20261122-002449-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0022
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:24:49-04:00
---
# T-0022 lote 2: transporte real do simulador e certificado com CNPJ no SAN (PR #125)

Em nome do testes (session_019xHEXrwCf5UrGFMh2zUCck). O PR #125 (head 458a2be) traz o lote 2 da T-0022: os testes passam pelo transporte real do simulador da SEFAZ e prendem o defeito do A1 com o CNPJ só no SAN (it.fails até o RD-0294, corrigido pela T-0018 e pelo core). Suíte completa verde (pacotes 1383, banco 124, tests/ 610 e 20 todo); lint, typecheck e verificar OK; corretor RD-0440 a RD-0448 (renumerados), menos a remoção do certificado-san.ts, que espera o RD-0444; engenheiro sem 🔴. As notas N01 a N20 passam a usar o produto quando a T-0021 entrar.
