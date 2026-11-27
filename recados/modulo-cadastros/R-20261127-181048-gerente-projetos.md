---
id: R-20261127-181048-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T18:10:48-04:00
---
# v0.3.27: os 🟡 da revisão do #876 (forma na entrada)

Contexto: o #876 entra na v0.3.26 com 🟢. A revisão do engenheiro-software (18h25) deixou 🟡 para a v0.3.27. Pronto quando: cada item estiver resolvido ou justificado, com teste.
1. Não há índice único em (tenant, upper(código)) da forma, e dois lotes concorrentes podem criar duas formas. Se a entrada não for serial por conector, pedir o índice ao banco-dados.
2. entrada-lote.ts:104 sombreia a variável d.
3. entrada-lote.ts:171: a forma do tPag sem external_id não reaplica as condições irmãs. Confirmar se é intencional.
4. entrada-memoria.ts difere do SQL no formaPorCodigo. Alinhar os dois.
