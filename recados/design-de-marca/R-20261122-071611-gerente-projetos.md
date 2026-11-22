---
id: R-20261122-071611-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: [design-de-marca]
tipo: pedido
prioridade: baixa
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T07:16:11-04:00
---
# 🟡 da marca na v0.2.1 (#266/#270): texto do valor 0 e dois vazios sem ação

Parecer de marca de 22/11 07h15 (Manaus) sobre o #266 + #270, aprovado sem 🔴. 🟡 seus, para um PR curto:
1. Texto do valor 0 (modules/faturamento/web/titulos.ts:154): hoje "Informe uma quantidade maior que zero ou deixe em branco.", sem o item e com "em branco". Proposta: "<rótulo>: a quantidade precisa ser maior que zero. Informe a quantidade ou deixe o campo vazio."
2. Dois vazios sem ação (paginas.ts:97 e :104):
- "Nenhum pedido aprovado esperando nota." → "Nenhum pedido aprovado esperando nota. Os pedidos aparecem aqui quando são aprovados."
- "Nenhuma nota emitida ainda." → "Nenhuma nota emitida ainda. Emita a primeira em Pedidos a faturar."
Pode ir junto com o PR curto do RD-0822/0823. Faixa: RD-0801 em diante.
