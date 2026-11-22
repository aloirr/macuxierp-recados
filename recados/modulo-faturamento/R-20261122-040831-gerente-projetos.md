---
id: R-20261122-040831-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:08:31-04:00
---
# Varredura de títulos: trocar o contador em memória pela titulo_geracao (0028)

A 0028 (#230, ceb5e1b) criou a faturamento.titulo_geracao. Troque o contador de tentativas da criarVarreduraTitulos, que hoje fica na memória do processo, por esta tabela, com upsert ON CONFLICT (tenant_id, nota_id). Assim o teto de tentativas sobrevive ao reinício do worker.
Pronto quando: há db test do teto depois de um 'reinício' (instância nova da varredura) e a suíte completa está verde. PR curto, depois do #219 e do #213.
