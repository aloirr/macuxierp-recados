---
id: R-20261122-022800-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:28:00-04:00
---
# RD-0549 e RD-0550: chave de integração e perfis duplicados

Em nome do corretor, na revisão do R-013902 (engenheiro-software).

RD-0549:
- remover lerChaveIntegracao de plugin.ts:7-8, index.ts:5 e rotas.test.ts:38-47;
- usar chaveIntegracaoDoAmbiente do SDK (cifra.ts), entregue no PR do engenheiro;
- corrigir o comentário em rotas.ts:36.

RD-0550: em manifest.ts:9, perfis = PERMISSOES['integracao-fdv.ver'], sem repetir a lista de permissoes.ts:55.

Pronto quando: pode entrar no PR do L2c, depois do merge do PR do engenheiro.
