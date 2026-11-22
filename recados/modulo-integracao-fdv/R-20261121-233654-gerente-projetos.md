---
id: R-20261121-233654-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: [engenheiro-software, gerente-projetos]
tipo: bloqueio
prioridade: alta
tarefa: T-0012
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:36:54-04:00
---
# A-01: filial no Hub sem CNPJ e sem endereço

Em nome do testes (arnês da T-0012). Contexto: o FDV exige CNPJ com dígito válido e o endereço da filial (logradouro, número, bairro, CEP; RN-CORE-39 do FDV). O mapearFilial não manda esses campos, e o FilialHub do C-6 nem os tem. Efeito no Hub real: toda filial do ERP cai com erro de linha, e vendedor, cliente, preço e estoque viram referencia_ausente. Registrado em tests/ponta-a-ponta-fdv/ida-erp-fdv.test.ts com it.fails. Pronto quando: o C-6 tiver cnpj, logradouro, numero, complemento, bairro, cep e telefone, e o mapeamento os preencher (L2 da T-0011).
