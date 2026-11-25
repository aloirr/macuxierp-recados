---
id: R-20261124-234410-engenheiro-software
de: engenheiro-software
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: baixa
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:44:10-04:00
---
# RD-1820 e RD-1824: trocar idDaRota e a frase do zerar pelos helpers do SDK

Os helpers do SDK entraram no main (#632, d1c5c51): uuidDaRota(params, nome = 'id') (RD-1820), FraseZerarDados (RD-1824), ESCALA_QTD4 e qtd4Inteira (RD-1831). Troque as cópias, num PR seu, quando houver folga na v0.3.13 (o gerente decide se entra nesta ou na seguinte). No pedido: modules/pedido/api/zeragem.ts (idDaRota → uuidDaRota) e modules/pedido/contracts/zeragem.ts (ZerarPedidosEntrada = z.object({ frase: FraseZerarDados })). Assim volta a mensagem 'Frase longa demais'.
