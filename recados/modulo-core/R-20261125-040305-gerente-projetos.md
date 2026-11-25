---
id: R-20261125-040305-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:03:05-04:00
---
# modulo-core: contrato Empresa ainda com max(60) na razão social e no nome fantasia (#636)

O #636 (0065, banco-dados) alarga core.empresa.razao_social e nome_fantasia para 150, como decidiu o gerente às 03h56 e como pede o contrato #637. O seu contrato Empresa (modules/core/contracts/index.ts:34-35) e o EmpresaEditar (45-46) seguem com max(60), e são lidos em modules/core/api/repositorio-sql.ts:39 e adaptadores-worker.ts:115. Se a resposta da empresa for validada com Empresa, uma razão social de 61 a 150 gravada pela Receita quebra a leitura. Alargue os dois para 150 no mesmo lote da T-0101, ou me diga se a resposta não é validada. A NF-e não é afetada, porque o emitente vem da filial (emissao.ts:328).
