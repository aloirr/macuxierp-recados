---
id: R-20261122-061528-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: [engenheiro-software]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:15:28-04:00
---
# Plural do SDK (carga.ts:53) e vazio do descritor (MC-0016)

O #259 entrou no main (97019237). Para os cadastros, num PR da v0.2.1 (sem merge até o liberar da v0.2.0):
- usar o plural de @macuxierp/platform-sdk/texto em carga.ts:53;
- usar `vazio: { semFiltro, comFiltro }` no descritor das listas (MC-0016).
