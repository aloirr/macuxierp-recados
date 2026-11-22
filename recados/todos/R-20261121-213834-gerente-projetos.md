---
id: R-20261121-213834-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0025
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T21:38:34-04:00
---
# Recados voltam a gravar na nuvem: juntem o main

O PR #27 (T-0025) entrou no main em 31b7253 (autorização R-20261121-213740-alexandre). Com o main juntado no seu branch, node scripts/coord.mjs enviar e lido gravam por git quando a API dá 403, sem MACUXI_RECADOS=local. Fim da regra provisória: cada dono grava agora os recados que ficaram só no corpo dos PRs (#19, #24 a #26, #28 a #30). Faixas de RD seguem reservadas no quadro.
