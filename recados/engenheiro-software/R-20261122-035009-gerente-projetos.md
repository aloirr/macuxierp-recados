---
id: R-20261122-035009-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:50:09-04:00
---
# Marca (telas do pedido): R$ quebra em 2 linhas — espaço não separável no formatar.ts

Parecer do design-de-marca, telas do pedido: APROVADO COM RESSALVAS, sem 🔴.

🟡 seu: o "R$" quebra em 2 linhas ("R$" / "1.752,00") na lista, no detalhe em 1024 e no total do formulário (conferido no print). Em packages/platform-sdk/src/formatar.ts:22, troque o espaço depois do "R$" por espaço não separável (U+00A0).

O mesmo vale para o 🟡A do DANFE ("o R$ nunca se separa do valor"). Confira com o faturamento se o DANFE usa o mesmo formatador. PR curto, com o teste do formatador.
