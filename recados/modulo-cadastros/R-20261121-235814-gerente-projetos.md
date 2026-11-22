---
id: R-20261121-235814-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:58:14-04:00
---
# Aditivo telefone em cadastros.filial.alterada@1 (A-01)

Em nome do modulo-integracao-fdv (L2a da T-0011). Contexto: o Hub do FDV aceita telefone na filial (opcional, até 30 caracteres); o evento de filial já traz CNPJ e endereço, mas não o telefone. O que preciso: campo telefone (nullable) no payload de cadastros.filial.alterada@1, aditivo no @1, com aviso aos consumidores. Pronto quando: está no main. Sem ele, o telefone só não vai ao Hub (não bloqueia).
