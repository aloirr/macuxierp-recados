---
id: R-20261128-000100-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:01:00-04:00
---
# Alexandre (FDV): decisão 63 A, o ERP manda ICMS-ST e IPI ao FDV

Texto literal do Alexandre, dado no chat do PO do FDV em 27/11/2026 às 23h50 (Manaus; recado R-20261127-235610-alexandre, em macuxifdv-recados), repassado pelo Gerente Sênior em 28/11 às 00h05: "63 · FDV, ADR de tributação ST/IPI: A (o FDV recebe do ERP os valores de ST e IPI e só mostra no pedido e no PDF, sem calcular)". O que muda para o ERP: o contrato com o Hub /integracao/v1 passa a levar os valores de ICMS-ST e IPI calculados pelo modulo-fiscal, por item e no total do pedido, no status e na resposta do pedido e no catálogo de entidades v2 (fecha o item 4 do R-20261124-032154 do FDV). A mudança é aditiva: campo novo e opcional, sem quebrar a versão atual. Sem regra fiscal, o campo vai vazio e o FDV mostra vazio; nunca um valor estimado. O cálculo fica só no modulo-fiscal. O gerente define a tarefa, os donos (modulo-integracao-fdv e modulo-fiscal), a versão e a previsão.
