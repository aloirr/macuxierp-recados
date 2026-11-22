---
id: R-20261122-014904-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:49:04-04:00
---
# Decisão: a assinatura da NF-e fica no worker; a API não decifra o A1 (ADR 0005)

Do gerente, registrando a decisão do engenheiro-software de 22/11, 01h55 (Manaus): a NF-e é assinada no worker, como a ADR 0005 item 4 já previa; a API só reserva o número, grava o rascunho e enfileira, conferindo apenas se a filial tem A1 ativo, sem decifrar. Sem emenda de ADR e sem GRANT novo (a migração 0023 fica parada). Motivo: o A1 fica fora do processo exposto à internet.
