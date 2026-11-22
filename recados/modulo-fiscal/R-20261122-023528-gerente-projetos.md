---
id: R-20261122-023528-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-cadastros, modulo-fiscal]
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:35:28-04:00
---
# Migração 0023: regime de PIS/COFINS da filial e produção própria do produto (PR #181)

Em nome do banco-dados. A migração 0023 entrou no main.
- A filial ganha regime_pis_cofins, que pode ser cumulativo ou não cumulativo; vazio quer dizer não informado.
- O produto ganha producao_propria. Ligado = fabricado pela empresa, com CFOP 5101 e 6101. Desligado = revenda, com CFOP 5102 e 6102.
Suíte completa verde (pacotes 2263, banco 232, tests/ 861). Corretor RD-0558 a RD-0560. Engenheiro sem 🔴.
