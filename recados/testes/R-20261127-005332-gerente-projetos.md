---
id: R-20261127-005332-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0057
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T00:53:32-04:00
---
# modulo-cadastros: PR #768 (D3/D4) — trocar it.fails do D4 por it

O PR #768 (28156270), do dono modulo-cadastros, corrige o D4: o registro com alterado_em mais antigo agora conta em obsoletas, não é gravado e o cursor não recua. Por isso o it.fails de tests/ponta-a-ponta-fdv/entrada-v1.db.test.ts:291 passa e acusa 'Expect test to fail'. O CI do #768 fica vermelho até essa linha virar it(...).
O D3 só foi corrigido em parte: a forma que já tem condição passa a atualizar. A forma nova sem condição depende da tabela cadastros.entrada_forma, pedida à banco-dados no R-20261126-233500 (parte 2). O caso da linha 270 também precisa mandar o lote de forma antes do lote de prazos; por enquanto ele segue como it.fails.
