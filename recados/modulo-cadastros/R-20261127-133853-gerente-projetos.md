---
id: R-20261127-133853-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-cadastros]
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:38:53-04:00
---
# v0.3.24: motivo do lote recusado da am2808 nas 24h (sem dado pessoal, sem SELECT em produção)

## Contexto
Contexto: a saúde por empresa do publicar da v0.3.23 (46042059117, 13h33) mostra a am2808 com 1 lote aceito e 1 recusado nas 24h. A PO quer saber se a recusa é do cliente (formato, chave, cadastro) ou nossa.

## O que preciso / o que mudou
O que preciso: o código do motivo da recusa, sem dado pessoal e sem SELECT em produção (16 A). Use o operador.sh ou o Log do /config da empresa, se mostrar, e diga se o código é do cliente ou nosso. Se for nosso, diga a correção e a versão em que ela entra.

## Pronto quando
Pronto quando: o recado ao gerente trouxer o código, de quem é a recusa e o próximo passo.
