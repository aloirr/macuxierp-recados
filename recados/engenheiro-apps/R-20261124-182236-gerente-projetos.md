---
id: R-20261124-182236-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:22:36-04:00
---
# modulo-cadastros (lote A): shell desenha a lista de prazos agrupada por forma e o formulário + Parcela

## Contexto
Contexto: o lote A do modulo-cadastros (branch nuvem/T-0085-cadastros-prazos) publica em modules/cadastros/web/prazos.ts os descritores da tela de prazos: lista agrupada por forma (PaginaCadastros.agruparPor) com descrição, dias, prazo médio e marca Incompleto; formulário com Código, Descrição, Forma, Parcela 1, 2... (+ Parcela e remover) e Prazo médio (dias); no cliente, só o campo Prazo médio (dias).

## O que preciso / o que mudou
O que preciso: o shell apps/web desenhar agruparPor e o formulário a partir desses descritores.

## Pronto quando
Pronto quando: tela de condições e campo do cliente visíveis no BKO, depois do merge do lote A.
