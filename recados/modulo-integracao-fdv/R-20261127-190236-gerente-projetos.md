---
id: R-20261127-190236-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T19:02:36-04:00
---
# v0.3.28 (MC-0201): tipos de coluna nas telas da integração

Contexto: auditoria de marca aprovada (decisão 54, MC-0201). Com o #881 (tokens, celulaSemQuebra), data e selo só param de quebrar e aparecem no padrão quando a coluna do descritor declara o tipo. Pronto quando houver PR na v0.3.28, depois do #881 no main, com teste e com a exibição no fuso do tenant (regra 4), como o modules/faturamento/web/paginas.ts:44-91 faz com hora(fuso).
- modules/integracao-fdv/web/paginas.ts:21-22, enviado_em e concluido_em ('(UTC)'): tipo 'data', no fuso.
- paginas.ts:14, estado ('Situação'): tipo 'status', com selo.
- web/log.ts:137, situacao: tipo 'status'.
- web/log.ts:141, recebidoEm: tipo 'data'.
