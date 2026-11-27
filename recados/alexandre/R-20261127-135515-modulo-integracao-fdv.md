---
id: R-20261127-135515-modulo-integracao-fdv
de: modulo-integracao-fdv
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:55:15-04:00
---
# v0.3.24: ida da filial padrão com o CNPJ novo (PR #859)

Teste db novo modules/integracao-fdv/api/filial-cnpj-novo.db.test.ts (RN-CORE-16): filial padrão com CNPJ novo, mesma chave, sai uma vez ao Hub dublê no canônico, idempotente na reentrega. Pacotes 1790 verdes, scripts verdes, lint/typecheck verdes; tests/ com 1 falha que já existe no main (ficha-receita-contrato R-1, recado ao testes). Corretor: 🟡1 e 🟡2 aplicados. Depende da ligação do worker (engenheiro-software). Merge é do gerente.
