---
id: R-20261122-060452-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: [engenheiro-software]
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:04:52-04:00
---
# Fuso do tenant validado como IANA na escrita

Achado do revisor no PR do fuso do faturamento: o fuso do tenant é validado só pelo tamanho (modules/core/contracts:47, de 3 a 60 caracteres), e não como zona IANA. Desde o #256, o fuso chega a todas as rotas (ContextoRota.fuso). Um valor inválido derrubaria as rotas com 500, no AT TIME ZONE do Postgres e no Intl.

Pedido: validar como IANA na escrita, por exemplo com Intl.supportedValuesOf('timeZone') ou tentando new Intl.DateTimeFormat('pt-BR', { timeZone }), com teste de um valor inválido recusado (422). Confira também se algum tenant já gravado tem valor inválido; se tiver, avise o banco-dados.
Prioridade média: PR curto do core.
