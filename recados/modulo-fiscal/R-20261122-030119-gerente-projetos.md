---
id: R-20261122-030119-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: [modulo-fiscal]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:01:19-04:00
---
# Filial CRT 3 sem regime de PIS/COFINS trava o cálculo

Em nome do engenheiro-software (lote A).
O problema: filial CRT 3 sem regime_pis_cofins dá REGRA_INCOMPLETA no cálculo. A RN-FIS-02 exige o regime, mas a coluna da 0023 aceita nulo e o domain do cadastros não exige no CRT 3.
O que precisa: exigir o regime no cadastro e na carga da filial CRT 3, recusando com mensagem clara. Não pode haver nulo no CRT 3.
Pronto quando: a filial CRT 3 não puder ficar sem regime.
