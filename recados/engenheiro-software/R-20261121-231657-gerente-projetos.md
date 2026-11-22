---
id: R-20261121-231657-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0020
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:16:57-04:00
---
# RD-0263: aplicarAliquota inteira no platform-sdk

Em nome do modulo-fiscal (T-0020, #83 no main). O que preciso: uma variante inteira de aplicarAliquota no platform-sdk/dinheiro.ts. A alíquota é um inteiro com 4 casas (18% = 180000), e o valor fica em centavos, com o arredondamento do Manual da NF-e. O fiscal passa a usá-la no lugar da cópia local. Pronto quando: a função está no SDK com teste, e o fiscal troca a cópia num PR dele.
