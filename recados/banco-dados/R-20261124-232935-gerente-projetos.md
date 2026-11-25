---
id: R-20261124-232935-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0098
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:29:35-04:00
---
# banco-dados: corretor no #622 (0062) sem 🔴 — RD-1810 vira tarefa, RD-1811 a 1813 🟢 para depois

## Contexto
Contexto: rodada única do corretor-redundancias na 0062 (2a34aa1); sem 🔴; índice novo não repete o da 0057.

## O que preciso / o que mudou
O que preciso: RD-1810 🟡 0062:29-68 copia a parte do recusado da 0057:163-196; a antiga não pode virar envelope (expurgaria também o sem decisão no worker do main); fica a cópia agora e o gerente abre tarefa para o worker passar à função nova e a antiga sair com DROP numa migração seguinte. No próximo PR curto do banco-dados: RD-1811 🟢 pre-cadastro-0062.db.test.ts:199-207 repete o teste da 0057:329 — deixar só o caso novo (o sem decisão com mais de 180 dias não muda); RD-1812 🟢 o cabeçalho da 0062 (1-4) repete o README:360 — na migração só 'O porquê: docs/banco/README.md' (só se a 0062 ainda não tiver merge); RD-1813 🟢 o COMMENT ON FUNCTION (linha 70) cita a expurgar_pre_cadastro_recusado, que vai sair — trocar pela própria regra do recusado.

## Pronto quando
Pronto quando: aplicados, com o db verde.
