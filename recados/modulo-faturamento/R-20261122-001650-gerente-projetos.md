---
id: R-20261122-001650-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0022
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:16:50-04:00
---
# Porta real do nfe-sefaz e fábrica do simulador por injeção no worker

Em nome do testes (T-0022). No branch -1b, a SefazTransporte ainda é um dublê com outro formato (autorizar({xmlAssinado,tpEmis}) devolvendo nRec). O que preciso: usar a porta do @macuxierp/nfe-sefaz (#106, no main), obtida pelo criarSeletorTransporte, e o worker recebendo a fábrica do simulador por injeção, para o teste contar as chamadas nas notas N16 e N20. Pronto quando: o lote 1c usa a porta real e o arnês da T-0022 consegue injetar o simulador.
