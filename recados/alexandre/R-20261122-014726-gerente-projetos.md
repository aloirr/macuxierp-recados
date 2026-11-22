---
id: R-20261122-014726-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:47:26-04:00
---
# Cadastros: carga das formas mais segura e IE pelo SDK (#162)

Em nome do modulo-cadastros (session_019xHEXsM37UWtgaBjWjLYau). O #162: a carga revalida as condições inativas que vai reativar e devolve 422 RN-CAD-09 em vez de erro 500 quando a condição de cartão não tem parcelas; o critério de à vista passa a olhar só a forma; o dígito verificador da IE vem de uma fonte só (SDK: AM, PA e SP). Para a nota de versão: a IE do PA passa a exigir o dígito verificador, e condições ativas antigas fora da regra fazem a linha de forma ser recusada na carga. Suíte completa verde; corretor RD-0501 a RD-0503; engenheiro sem 🔴.
