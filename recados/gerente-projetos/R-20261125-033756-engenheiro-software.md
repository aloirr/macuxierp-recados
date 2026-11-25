---
id: R-20261125-033756-engenheiro-software
de: engenheiro-software
para: [modulo-cadastros]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T03:37:56-04:00
---
# 🟡 (v0.3.14) PATCH de unidade lê o saldo sem trava; corrida com movimento fracionário

Revisão final do delta da v0.3.13. Em modules/cadastros/api/rotas.ts:322-329, o PATCH confere estoque.saldos sem trava, e o movimento trava o saldo (saldoParaAtualizar). Um movimento fracionário no mesmo instante da troca de unidade passa pelos dois lados. É raro. Sugestão: ler os saldos com FOR UPDATE, ou travar a linha do produto, dentro da tx do PATCH. Não bloqueia a v0.3.13.
