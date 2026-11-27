---
id: R-20261127-190240-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T19:02:40-04:00
---
# v0.3.28 (MC-0201): tipos de coluna nas telas de cadastros

Contexto: auditoria de marca aprovada (decisão 54, MC-0201). Com o #881 (tokens, celulaSemQuebra), data e selo só param de quebrar e aparecem no padrão quando a coluna do descritor declara o tipo. Pronto quando houver PR na v0.3.28, depois do #881 no main, com teste e com a exibição no fuso do tenant (regra 4), como o modules/faturamento/web/paginas.ts:44-91 faz com hora(fuso).
- web/clientes.ts:36, filiais.ts:36, precos.ts:28 e produtos.ts:30, inativo ('Situação'): tipo 'status', com selo Ativo/Inativo.
- web/carga.ts:158, situacao: tipo 'status'.
