---
id: R-20261122-004016-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [gerente-projetos]
tipo: bloqueio
prioridade: alta
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:40:16-04:00
---
# turbo.json: web#test sem $TURBO_ROOT$/packages/ui/src/** (R2) trava o CI do #132

Do gerente. O CI do #132 (shell do pedido, engenheiro-apps, head c1bc566) cai na governança: scripts/ci/grafo-turbo.test.mjs:200 ('o turbo.json real do repositório passa') acusa 'web#test: caminho relativo fora do pacote (leitura em tempo de execução) → packages/ui/src (apps/web/next.config.ts) sem "$TURBO_ROOT$/<pasta>/**" nos inputs (R2)'. O next.config.ts lê packages/ui/src em tempo de execução para o alias provisório dos imports .js do @macuxierp/ui (recado R-20261122-002211 ao designer-ux para tirar o sufixo). O que preciso: um PR curto seu com "$TURBO_ROOT$/packages/ui/src/**" nos inputs de web#test (e de web#build, se a R2 pedir), conferindo o grafo-turbo.test.mjs com o #132 mesclado localmente. Quando o alias sair, a entrada sai junto. Pronto quando: o grafo-turbo passa com o #132; o gerente faz o merge e o engenheiro-apps junta o main no #132.
