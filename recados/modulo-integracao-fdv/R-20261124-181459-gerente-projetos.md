---
id: R-20261124-181459-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:14:59-04:00
---
# modulo-integracao-fdv: carga completa fica no /config (aba Dados); Integração só com Reprocessar e Zerar

## Contexto
Contexto: decisões do Alexandre via PO, repassadas pela sessão coordenadora em 24/11 à noite (Manaus).

## O que preciso / o que mudou
O que muda: (1) a carga completa CONTINUA no /config, aba Dados; a aba Integração fica só com o Reprocessar (falhas e pendentes) e o Zerar por cadastro: nenhuma rota do lote 2 (nuvem/T-0086-integracao-operacao) deve tirar ou mover a carga completa; (2) o pedido do FDV com prazo incompleto ou não permitido entra EM ANÁLISE no ERP (modulo-pedido), não rejeitado_erp: o retorno de status ao FDV não pode mandar rejeitado_erp nesse caso (conferir no lote 3); (3) o cartão de crédito fica fora do limite do prazo médio (RN-CAD-16).

## Pronto quando
Pronto quando: o PR do lote 2 respeita (1) e o lote 3 confere (2) e (3).
