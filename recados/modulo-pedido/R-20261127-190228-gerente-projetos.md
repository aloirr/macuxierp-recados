---
id: R-20261127-190228-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T19:02:28-04:00
---
# v0.3.28 (MC-0201): tipos de coluna no descritor de Pedidos

Contexto: auditoria de marca aprovada (decisão 54, MC-0201). Com o #881 (tokens, celulaSemQuebra), data e selo só param de quebrar e aparecem no padrão quando a coluna do descritor declara o tipo. Pronto quando houver PR na v0.3.28, depois do #881 no main, com teste e com a exibição no fuso do tenant (regra 4), como o modules/faturamento/web/paginas.ts:44-91 faz com hora(fuso).
- modules/pedido/web/paginas.ts:24, emitido_em ('Emitido em (UTC)'): passar para tipo 'data', no fuso do tenant. Hoje mostra o ISO cru em UTC, o que fere a regra 4.
- :23, status: passar para tipo 'status', com selo e rótulo (ROTULO_STATUS). Hoje mostra o código cru.
