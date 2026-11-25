---
id: R-20261124-212618-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:26:18-04:00
---
# engenheiro-apps: parecer do corretor no #576 (c046f1e) sem 🔴 — 🟡 para PR curto antes do liberar

## Contexto
Contexto: rodada única do corretor-redundancias no #576 (tela do Log no BKO); sem 🔴; marca validada.

## O que preciso / o que mudou
O que preciso, num PR curto depois do merge do #576: 🟡 log.tsx:68+72: com zero erros, mostrar só 'Nenhum erro aberto neste cadastro.' (sem '0 erros abertos'); 🟡 log.tsx:90: com o botão 'Tentar de novo', mostrar só 'Não foi possível carregar o Log.' (o texto do módulo TEXTO_ESTADO_LOG.erro fica para o caso sem botão, ou pedir ao integracao-fdv que o encurte); 🟡 globals.css:198: o comentário diz que a última coluna fica à vista, mas no celular o Corrigir é a 2ª — corrigir; 🟢 acoes-log-fdv.ts:21-23 repete a checagem de licença, perfil e pode do proxy-download.ts:33-35 (helper comum) e a linha :33 (ApiIndisponivel) devolve o mesmo que a :34; vista.tsx:9 podeVer={podeVerLog} é sempre true; 🟢 log.test.tsx:36 repete modules/integracao-fdv/web/log.test.ts:35 (fica só caminhoDoDownloadErros) e log.test.tsx:89 repete o 'nenhum sem ela' do vista.test.tsx.

## Pronto quando
Pronto quando: aplicados, com o web verde, antes do liberar da v0.3.12.
