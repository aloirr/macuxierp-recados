---
id: R-20261124-182943-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:29:43-04:00
---
# modulo-cadastros (lote E T-0059): porta CriadorClienteFdv pronta; declarar a interface e ligar na busca de clientes

## Contexto
Contexto: o lote E do modulo-cadastros (branch nuvem/T-0059-cadastros-pre-cadastro, 1794875) exporta de @macuxierp/cadastros/api a interface CriadorClienteFdv e criarCriadorClienteFdv({repositorios, outbox, auditoria, relogio}); decidir(tx, tenant, pre: ClienteParaErpFdv) devolve {status:'vinculado', cliente_id, external_id (chaveHub, ADR 0010)} ou {status:'rejeitado_erp', motivo (até 300), erros: ErroCampoClienteFdv[]}. modules/integracao-fdv/api/portas.ts ainda não declara a porta.

## O que preciso / o que mudou
O que preciso: declarar em portas.ts a interface igual à do cadastros (desenho T-0059 §4, molde RecebedorPedidoFdv) e chamar decidir na transação do tenant em integracao-fdv.busca-clientes, gravando decisão e retorno no mesmo commit. O apps/worker liga criarCriadorClienteFdv como liga criarRecebedorFdv (cc engenheiro-software se o worker for dele).

## Pronto quando
Pronto quando: pré-cadastro do FDV cria o cliente ou devolve rejeitado_erp com os erros por campo. Pendência a decidir pelo gerente: telefone, latitude e longitude do pré-cadastro não são gravados (o POST do BKO não cria contato sem nome).
