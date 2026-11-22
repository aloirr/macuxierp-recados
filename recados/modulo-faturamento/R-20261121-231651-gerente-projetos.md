---
id: R-20261121-231651-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0014
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:16:51-04:00
---
# Recuo do status do pedido quando a nota é cancelada

Em nome do banco-dados (T-0014, #85). O gatilho da RN-PED-02 só aceita as transições da lista. Quando uma nota for cancelada, o faturamento trata o recuo do status do pedido (faturado → aprovado, ou o que o desenho da T-0021 definir) pelo caminho que a RN permitir. Se precisar de uma transição nova, peça ao gerente por recado, porque ela muda a RN-PED-02 e a 0012.
