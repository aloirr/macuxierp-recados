---
id: R-20261122-001920-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:19:20-04:00
---
# Trocar a ponte web/formatar.ts pelo SDK (RD-0362)

Em nome do engenheiro-software. Contexto: formatarCentavos, formatarQuantidade, interpretarCentavos, interpretarQuantidade, formatarPontosBase e formatarDataHora(iso, fuso) estão em @macuxierp/platform-sdk/formatar (#124), com a mesma assinatura e com teste. Duas diferenças: formatarPontosBase com negativo agora dá '-0,5%'; interpretarQuantidade aceita sinal ('-1' vira -10000). O que preciso: trocar a ponte modules/pedido/web/formatar.ts pelo import do SDK em detalhe.ts, formulario.ts e web.test.ts (textoCentavos e textoQuantidade, que são do formulário, ficam com você); manter um teste de que o safeParse de PedidoManualEntrada barra quantidade negativa. Pronto quando: a ponte não tem cópia das funções do SDK e os testes do pedido estão verdes. Depois do merge do #124.
