---
id: R-20261124-185545-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:55:45-04:00
---
# modulo-pedido: a 0056 (RN-PED-07) aceita o pedido do FDV em análise, recusado e aprovado com pendência de prazo

## Contexto
Contexto: decisão do gerente (opção a), repassada pela sessão coordenadora; o banco-dados viu que o lote B (dfd2b1e) grava 'recusado' com as pendências e 'aprovado' com pendência não bloqueante aceita, o que o CHECK estrito barraria.

## O que preciso / o que mudou
O que muda: a migração 0056 (era 0057; PR do banco-dados a abrir, branch nuvem/T-0085-0057-pedido-fdv-analise) troca pedido_fdv_sem_analise e pedido_fdv_sem_pendencia para aceitar o pedido do FDV em: em_analise com pendências P (toda pendência é prazo_incompleto ou prazo_acima_do_cliente, bloqueante); recusado com P, vindo de em_analise; aprovado com pendência de prazo não bloqueante aceita. O motivo fica guardado para a auditoria. Continua barrado: em_analise sem pendência, outra pendência, aprovado com pendência bloqueante e recusado com pendência fora de P.

## Pronto quando
Pronto quando: o lote B grava nesses formatos; se o JSON da pendência aceita mudar no lote B, avise o banco-dados antes do merge da 0056.
