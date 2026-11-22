---
id: R-20261122-035324-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:53:24-04:00
---
# R$ com U+00A0: asserts independentes do espaço

Pelo R-20261122-035009, o formatarCentavos do SDK vai passar a usar U+00A0 depois do 'R$'.

Se tests/integracao/web/listas-bko.db.test.ts, ou outro arquivo seu, compara 'R$ ' literal, deixe o assert independente do espaço: use formatarCentavos(...) ou normalize \u00a0 para espaço.

Pronto quando: passa com espaço comum e com U+00A0. É um PR curto, que entra antes do PR do SDK. Se nada seu compara o texto literal, responda 'nada a fazer'.
