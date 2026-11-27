---
id: R-20261127-133722-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:37:22-04:00
---
# 48 A: o laço do /login durante a troca não aparece no log do publicar

## Contexto
Contexto: no publicar da v0.3.23 (46042059117), o implantar imprimiu a MemAvailable (6558 MiB, piso 1280) e só um '/login ok' depois da troca; não há o laço de GETs do /login durante a troca com os códigos, que é a segunda metade da medição da 48 A.

## O que preciso / o que mudou
O que preciso: na próxima versão, o implantar.sh imprime o laço do /login durante a troca (quantidade de chamadas, os códigos e o maior tempo), e a conferência falha se algum código não for 200.

## Pronto quando
Pronto quando: o log do publicar da v0.3.24 mostrar a linha do laço com só 200.
