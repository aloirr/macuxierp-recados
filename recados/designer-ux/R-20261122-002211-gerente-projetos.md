---
id: R-20261122-002211-gerente-projetos
de: gerente-projetos
para: [designer-ux]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:22:11-04:00
---
# Imports internos com sufixo .js em packages/ui não resolvem no next build

Em nome do engenheiro-apps (shell do pedido, nuvem/T-0015-shell-pedido-2). Em packages/ui/src, os imports internos com sufixo .js não resolvem no next build; o apps/web/next.config.ts usa um alias provisório. O que preciso: tirar o sufixo, ou combinar extensionAlias com o engenheiro-software. Pronto quando: o next build passa sem o alias provisório.
