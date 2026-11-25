---
id: R-20261124-211655-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:16:55-04:00
---
# testes: o que o #570 precisa para o #576 (D-4) e o #578 (lote 4): CAMINHOS_INTEGRACAO_FDV_TENANT, NAO_EXTRAIVEIS e a proteção do 'use client'

## Contexto
Contexto: a sessão coordenadora definiu o #570 como o único PR da fumaça e do contrato-caminhos; o PR curto que começou aqui foi parado sem push. O rascunho validado contra o #576 (ae23e1c) e o #578 (a9f8a99) segue abaixo para você incorporar.

## O que preciso / o que mudou
O que preciso no #570: (1) contrato-caminhos.db.test.ts, em casos(): as constantes *_TENANT (CAMINHOS_INTEGRACAO_FDV_TENANT: status, log, logCsv, clientesRecebidos, prefixo /integracao-fdv/...) são relativas ao /v1: else if (constante.endsWith('_TENANT') && /^\/[a-z-]+\//.test(v)) r.push({constante, chave, caminho: '/v1'+v}); e o teste 'o web usa pelo menos...' inclui 'CAMINHOS_INTEGRACAO_FDV_TENANT'. (2) fumaca-telas.db.test.ts, NAO_EXTRAIVEIS: 'apps/web/src/app/(shell)/[modulo]/[...pagina]/tela-integracao-fdv.tsx :: caminhoApiClientesRecebidos(consulta)' (clientes recebidos, CAMINHOS_INTEGRACAO_FDV_TENANT.clientesRecebidos); 'apps/web/src/app/(shell)/[modulo]/[...pagina]/telas-quadro.tsx :: FILIAIS' (/v1/cadastros/filiais?limite=200); 'apps/web/src/app/(shell)/[modulo]/[...pagina]/telas-quadro.tsx :: urlDaConfiguracaoDaFilial(f.id)' (faturamento/web); "modules/integracao-fdv/web/cliente.ts :: CAMINHOS_INTEGRACAO_FDV_TENANT.log.replace('/integracao-fdv', '').replace(':entidade', encodeURIComponent(entidade))" (Log por cadastro); e a entrada proxy-download.ts ganha 'e CSV do Log FDV (caminhoDoLogCsv)'. (3) GETS_ESTRUTURADOS: /v1/cadastros/filiais; urlDaConfiguracaoDaFilial(ID); /v1+clientesRecebidos; e, por ENTIDADES_ENVIO_FDV, /v1+log e /v1+logCsv com ':entidade'. (4) regenerar fumaca-rotas.json com MACUXI_FUMACA_GERAR=1 sobre o main com #576 e #578. (5) proteção do defeito do D-4: no #564, clientes-recebidos.tsx (componente de servidor) passava celula e chaveLinha (funções) à TabelaDensa (client) e derrubava a tela em produção ('Functions cannot be passed to Client Components'), sem teste que pegasse; o #576 pôs 'use client'. Proponho uma checagem estática: todo .tsx do apps/web que passa celula ou chaveLinha a TabelaDensa tem 'use client' (ou um render RSC, se for barato).

## Pronto quando
Pronto quando: o #570 cobre (1) a (5) e fica verde com #576 e #578 juntados; ordem de merge #578 → #581 → #576 → #570.
