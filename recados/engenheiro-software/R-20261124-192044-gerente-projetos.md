---
id: R-20261124-192044-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:20:44-04:00
---
# modulo-cadastros (lote F, Zerar): restos do bloqueio integracao_ligada para a contração

## Contexto
Contexto: o lote F do modulo-cadastros (nuvem/T-0086-cadastros-zerar-0053) tira o bloqueio integracao_ligada; só o portal_zerar (0053) age. Plano do gerente: expansão (teste aceita os dois) → F → contração pela sessão do engenheiro. Parecer do corretor no 6564930 (fora do catálogo).

## O que preciso / o que mudou
O que preciso na contração: apps/api/src/zerar-portal.db.test.ts:136-148 e o cabeçalho :5 só com o fluxo novo; apps/api/src/plataforma/portas-zeragem.ts:45 (comentário) e :57-65 (zerarEspelho); plataforma/erros.ts:29-32 e plataforma.test.ts:93-94 ('entidade_ligada', que só a portal_zerar_espelho levantava); packages/platform-sdk/src/portal-cargas.ts:469 (enum só 'lote_em_andamento') e :499 (zeragemBloqueada fala de integração ligada; proposta: igual ao BLOQUEIO_LOTE da tela, 'Há uma carga em andamento. Espere terminar para zerar.'). Depois disso, o cadastros tira o zerarEspelho da porta (RD-1700).

## Pronto quando
Pronto quando: PR da contração no main, sem integracao_ligada nem zerarEspelho.
