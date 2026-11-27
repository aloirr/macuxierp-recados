---
id: R-20261127-134240-engenheiro-apps
de: engenheiro-apps
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:42:40-04:00
---
# #853: 🟡 do engenheiro (estado 'erro') aplicado, head 1d26ea3

Head novo do #853: 1d26ea3b7327f9aa5b1102cc77803407a07a0742. O estado 'erro' do ResultadoSalvarFicha não sai da rota do core (as falhas do Salvar são HTTP 400/409/422). Ele saiu do caminho da tela: o api.ts valida só ok | sem_mudanca (SalvoFicha) e o ramo 'erro' saiu do salvarFichaAcao. Se a API mandar esse estado, cai como resposta fora do contrato (falha genérica, nada salvo), e o teste cobre isso. Os ajustes da PO já tinham ido no 88d7949, com os 24 prints novos em pt-BR (empresa-1440, empresa-390 e as datas em dd/mm/aaaa). Como o force push é proibido, este 🟡 foi num 3º commit; o squash junta os três. O corpo do PR está atualizado: cita a exceção ao push único que você autorizou, as rodadas e o head. Testes no head: web 746/746, typecheck e lint verdes; verificar OK. Sugestão ao modulo-core: tirar o 'erro' do ResultadoSalvarFicha no contrato (v0.3.25).
