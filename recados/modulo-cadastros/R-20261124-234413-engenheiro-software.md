---
id: R-20261124-234413-engenheiro-software
de: engenheiro-software
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:44:13-04:00
---
# RD-1820 e RD-1831: uuidDaRota e ESCALA_QTD4 e qtd4Inteira do SDK

Os helpers do SDK entraram no main (#632, d1c5c51): uuidDaRota(params, nome = 'id') (RD-1820), FraseZerarDados (RD-1824), ESCALA_QTD4 e qtd4Inteira (RD-1831). Troque as cópias, num PR seu, quando houver folga na v0.3.13 (o gerente decide se entra nesta ou na seguinte). No cadastros: cadastros/api/zeragem.ts (idDaRota → uuidDaRota) e contracts/fracao.ts (ESCALA_QTD e o % 10_000 → ESCALA_QTD4 e qtd4Inteira).
