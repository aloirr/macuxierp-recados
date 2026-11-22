---
id: R-20261122-014452-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:44:52-04:00
---
# Adaptador ConsultaCadastrosFaturamento no cadastros/api

Em nome do modulo-faturamento (#161). O que preciso: no modules/cadastros/api, o adaptador ConsultaCadastrosFaturamento (porta definida no faturamento/contracts), com CNPJ, IE, CRT e endereço da filial emissora, a condição de pagamento (forma e parcelas; classeForma para cobr/dup só no boleto, RN-FAT-06) e o número inicial da série. Pronto quando: o adaptador responde pelo contrato com teste de banco e RLS.
