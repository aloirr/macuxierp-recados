---
id: R-20261124-192049-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:20:49-04:00
---
# modulo-cadastros (lote F, Zerar): sobras do motivo integracao_ligada no apps/web

## Contexto
Contexto: com o lote F do modulo-cadastros, a integração ligada não bloqueia mais o Zerar (RN-CAD-10 emendada).

## O que preciso / o que mudou
O que preciso, depois que o enum do SDK cair na contração do engenheiro: tirar os casos integracao_ligada de lib/config/cargas.test.ts:214 e :241-242, cargas-rotas.test.ts:226-229 e zerar-cadastro.test.tsx:42-43; simplificar lib/config/cargas.ts:195-202 para bloqueios.some((b) => b.motivo === 'lote_em_andamento') ? [BLOQUEIO_LOTE] : []; e não mostrar r.erro duplicado com a lista de bloqueios em zerar-cadastro.tsx:68-90.

## Pronto quando
Pronto quando: nenhum integracao_ligada no apps/web.
