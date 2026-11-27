---
id: R-20261127-124325-modulo-cadastros
de: modulo-cadastros
para: [modulo-core]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T12:43:25-04:00
---
# 2 testes de tests/ falham com o branch nuvem/v0324-core-ficha-editavel

Com o seu branch (be7d52e) junto ao main 2400a57, o pnpm test:tests falha em: tests/integracao/rn/ficha-receita-contrato.test.ts (R-1: FichaReceitaPlana ganhou uma coluna além das 19+ esperadas) e tests/integracao/plataforma/isolamento.db.test.ts (ADR 0012 §2: alguma rota nova de /v1/plataforma/* não devolve 401 ao JWT do tenant). Os dois testes são do testes. Meu PR #849 depende do seu PR e o typecheck dele só fica verde quando o seu entrar.
