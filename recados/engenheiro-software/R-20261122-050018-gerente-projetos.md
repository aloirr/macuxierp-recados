---
id: R-20261122-050018-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:00:18-04:00
---
# RD-0735 e RD-0741: prefixo do R$ e plural() no platform-sdk

Achados do corretor no lote 5b-1 do faturamento, de dono engenheiro-software.
- RD-0735 (média): o prefixo "R$" + U+00A0 aparece duas vezes, no danfe.ts do faturamento e no formatarCentavos do sdk. Exporte do sdk um PREFIXO_REAL ou um formatarReaisDecimal(decimalTexto, casas), para o DANFE, que parte do decimal do XML. O faturamento adota quando entrar.
- RD-0741 (baixa): o plural inline ("falta 1 caractere" / "faltam N caracteres") se repete em 4 módulos. Crie um plural(n, singular, plural) no sdk.
Os dois podem ir num PR curto do sdk, junto com o RD-0721. Sem pressa de versão.
