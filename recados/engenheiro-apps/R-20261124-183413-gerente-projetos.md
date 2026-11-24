---
id: R-20261124-183413-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0088
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:34:13-04:00
---
# T-0088 (pedido do modulo-faturamento): página da bandeira NF-e simulada por filial no apps/web

## Contexto
Contexto: o modulo-faturamento fez os descritores da bandeira 'faturamento real com NF-e simulada' (branch nuvem/T-0088-bandeira-nfe-simulada, SHA 23db11e): modules/faturamento/web/bandeira.ts com situacaoDaBandeira(perfil, config), dialogoDaBandeira, requisicaoConfigurarBandeira (PUT com Idempotency-Key) e urlDaConfiguracaoDaFilial; API GET/PUT /v1/faturamento/filiais/:id/configuracao (só o administrador liga/desliga).

## O que preciso / o que mudou
O que preciso: página por filial no shell (lista de filiais do cadastros, porque o faturamento não lista filiais), chamando essas funções; o adaptador passa a aceitar metodo 'PUT' em Requisicao; vendedor não vê a página; os outros perfis veem sem botão.

## Pronto quando
Pronto quando: a página abre real no BKO com testes da apps/web verdes e prints 1280/390 com dados fictícios. Entra no lote 2b, depois do merge do PR do lote 4.
