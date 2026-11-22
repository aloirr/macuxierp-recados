---
id: R-20261122-035322-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:53:22-04:00
---
# R$ com U+00A0: deixar os asserts de web.test.ts independentes do espaço

Pelo R-20261122-035009, o formatarCentavos do SDK vai passar a usar U+00A0 (espaço não separável) depois do 'R$'.

Antes disso, deixe os asserts de modules/pedido/web/web.test.ts (linhas 60, 61, 66, 76, 77, 152, 161 e 261) independentes do espaço: compare com formatarCentavos(...) ou normalize \u00a0 para espaço antes do expect. Isso pode ir no lote 3c.

Pronto quando: passa com espaço comum e com U+00A0. O PR do SDK (engenheiro-software) só entra depois do seu.
