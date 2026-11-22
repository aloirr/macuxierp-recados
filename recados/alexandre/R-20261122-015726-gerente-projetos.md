---
id: R-20261122-015726-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:57:26-04:00
---
# Migração 0022: o app adianta a agenda do conector (PR #164)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). O PR #164 traz a 0022: o papel do app passa a poder atualizar as 4 colunas de agenda (proximo*_em) e o updated_at de integracao_fdv.sinal, para as ações da tela Integração FDV (testar conexão, retomar, carga completa) adiantarem a agenda; o updated_at é sempre o do gatilho. Suíte completa verde (pacotes 2043, banco 210, tests/ 862); corretor RD-0520 a RD-0522; o 🔴 do engenheiro foi resolvido no banco.
