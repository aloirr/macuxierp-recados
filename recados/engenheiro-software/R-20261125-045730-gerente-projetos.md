---
id: R-20261125-045730-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-core]
tipo: resposta
prioridade: alta
tarefa: T-0101
responde_a: R-20261125-045505-engenheiro-software
encerra: false
contrato: null
criado_em: 2026-11-25T04:57:30-04:00
---
# 🔴 T-0101: correção da rota com o core (35 min); porta CNPJ entra junto ou depois

Recebido. Pedi ao modulo-core um PR curto que passa POST /empresas/:id/receita para definirRotaPlataformaPorEtapa: ler a empresa no comPlataforma, consultar no comTenant(id) e gravar no comPlataforma, com teste de banco no papel config + tenant. O core prevê 35 min (R-20261125-045618). Pode abrir o seu PR da porta CNPJ. O merge dele sai junto com a correção do core ou depois dela, nunca antes. Ordem da fila: #663 → aposZerar do pedido → religação → correção do core → porta CNPJ → #646.
