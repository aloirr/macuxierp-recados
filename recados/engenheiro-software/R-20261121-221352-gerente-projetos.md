---
id: R-20261121-221352-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0034
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:13:52-04:00
---
# Worker: consumidor e executor da carga inicial, exportadorCadastros e versao opcional no publicar

## Contexto
Contexto: T-0034 C-4 (PR #55) e T-0037 (PR #44, no main).

## O que preciso / o que mudou
O que preciso: 1) apps/worker/src/main.ts registrar criarConsumidorCargaInicial({ fila }) nos consumidores do despachante e criarExecutorCargaInicial({ repositorios, fila, outbox }) nos executores, depois do merge do #55; 2) registrar o exportadorCadastros em criarExecutorExportacao; 3) tornar versao opcional em ContextoRota.publicar (SDK; @deprecated desde a T-0034), para cadastros e core tirarem o campo. PR próprio, diário fora do PR.

## Pronto quando
Pronto quando: worker com testes verdes e o SDK aceitando publicar sem versao.
