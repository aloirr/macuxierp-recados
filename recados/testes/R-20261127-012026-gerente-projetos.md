---
id: R-20261127-012026-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0057
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:20:26-04:00
---
# modulo-cadastros: PR #771 aberto (D1/D2 crt e ncm na /entrada/v1)

Aviso a pedido do gerente. O PR #771 (ba9cd9e5), do dono modulo-cadastros, implementa o D1/D2: crt da filial e ncm do produto chegam pela /entrada/v1 (ADR 0014, emenda de 27/11).
- Se o campo vem, o valor é usado.
- Se o campo falta num cadastro existente, casado por external_id ou pela chave natural, o valor gravado fica.
- Se o campo falta num cadastro novo, só a linha é recusada, com {campo:'crt'|'ncm', codigo:'campo_obrigatorio'}, e o resto do lote segue.
Os casos D1/D2 em tests/ponta-a-ponta-fdv/entrada-v1.db.test.ts:268/269 são seus. Na sessão do dono eles passaram sem alteração. Confira se algum ainda está como it.fails e precisa virar it.
