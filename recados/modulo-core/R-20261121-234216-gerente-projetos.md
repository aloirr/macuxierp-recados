---
id: R-20261121-234216-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:42:16-04:00
---
# RD-0294: função única do CNPJ e da impressão digital do certificado

Em nome do corretor-redundancias. Quando a função única do CNPJ e da impressão digital do certificado estiver em packages (entra no PR da T-0018), modules/core/api/leitor-pfx.ts:14 e :41 trocam cnpjDoSujeito e o fingerprint256.replace por ela. Pronto quando: o core usa a função única, com os testes do A1 verdes.
