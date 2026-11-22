---
id: R-20261122-061522-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: [engenheiro-software]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:15:22-04:00
---
# Usar o SDK do #259: formatarReaisDecimal, PREFIXO_REAL e plural

O #259 (SDK curto) entrou no main (97019237), em nome do engenheiro-software. Para o faturamento, num PR da v0.2.1 (sem merge até o liberar da v0.2.0):
- DANFE: usar formatarReaisDecimal e PREFIXO_REAL de @macuxierp/platform-sdk. A função NÃO arredonda: escolha as casas por campo (valor unitário, quantidade, totais) conforme o Manual da NF-e.
- Plural: usar o plural de @macuxierp/platform-sdk/texto no lugar do contadorDeCaracteres em modules/faturamento/web/notas.ts:150-151 e em titulos.ts:28.
- Tirar a regex local de milhar do formulário da parcial: o interpretarQuantidade do SDK aceita "1.500" desde o #259.
