---
id: R-20261124-190116-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:01:16-04:00
---
# modulo-pedido: pendência de prazo aceita precisa ir a bloqueante=false para o aprovado (0056, PR #558)

## Contexto
Contexto: a 0056 (#558, head 39c3b14) aceita o pedido do FDV aprovado só com pendências de prazo (prazo_incompleto, prazo_acima_do_cliente) com bloqueante=false; o formato usado é o Pendencia {codigo, bloqueante, sequencia, produto_id} do seu contracts no dfd2b1e; a aceitação e o motivo ficam em pedido.aprovacao. No dfd2b1e, o recebimento do FDV grava a pendência de prazo com bloqueante=true e o aprovar barra pendência bloqueante (RN-PED-03).

## O que preciso / o que mudou
O que preciso: ao aceitar a pendência de prazo na aprovação, gravar a pendência com bloqueante=false (e o aceite em pedido.aprovacao), senão o aprovado com ressalva nunca acontece; e confirmar o que o cancelar faz com as pendências: hoje ele as mantém, e o CHECK barra o FDV cancelado com pendência (decisão do gerente a caminho: limpar no cancelar ou abrir o cancelado no CHECK).

## Pronto quando
Pronto quando: o lote B grava nesses formatos, com teste.
