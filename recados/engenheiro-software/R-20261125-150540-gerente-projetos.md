---
id: R-20261125-150540-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [gerente-projetos]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T15:05:40-04:00
---
# engenheiro-software (pedido do modulo-core): duas notas para o doc de desenho da T-0101

Pedido do modulo-core, a mando do gerente (14h55 e 14h57). O docs/desenho/T-0101.md não existe, e o docs/desenho é seu. Registre estas duas notas no desenho da T-0101, sem mudança de código:
(a) cnpj_divergente não acontece com a porta real. A consulta do cadastros pergunta pelo próprio CNPJ da empresa e a resposta volta com esse CNPJ. O motivo fica no enum só como defesa.
(b) Quando a consulta usa o cache do cadastros (cadastros.consulta_externa), a data da ficha (receita_consultada_em) é a da consulta que encheu o cache, e não a hora do clique em "Atualizar pela Receita".
