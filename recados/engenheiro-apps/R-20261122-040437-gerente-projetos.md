---
id: R-20261122-040437-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:04:37-04:00
---
# R$ com U+00A0: pedido.test.ts:78 e testTimeout do apps/web

1. apps/web/src/lib/telas/pedido.test.ts:78 cai com o U+00A0 do formatarCentavos (R-20261122-035009), por causa do texto.ts:8 do pedido. Depois que o pedido corrigir, confira e deixe o assert independente do espaço. Pronto quando: passa com o branch nuvem/T-0042-real-nbsp (f3aae35) mesclado.
2. No --tudo, apps/web/src/lib/api.http.test.ts:17 e listas.test.ts:22 estouram 5 s sob carga, com e sem a mudança; sozinhos, passam 13/13. Ponha um testTimeout maior no vitest do apps/web, como o faturamento fez no #201. Isso já apareceu em três lotes hoje (#220, #207 e o do engenheiro).
Os dois podem ir no PR curto do shell.
