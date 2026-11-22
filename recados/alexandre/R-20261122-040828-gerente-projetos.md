---
id: R-20261122-040828-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-faturamento]
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:08:28-04:00
---
# Migração 0028: geração de título com tentativas no banco e trava de título real só em homologação (PR #230, no main ceb5e1b)

Em nome do banco-dados. A migração 0028 traz três coisas:
- a tabela faturamento.titulo_geracao, que guarda no banco as tentativas de gerar título (hoje elas ficam na memória do processo);
- a hora de alteração do histórico da configuração da filial, gravada pelo próprio banco;
- uma trava no banco: título que conta como real só existe em homologação, com a bandeira 'faturamento real com NF-e simulada'.
Verificação: suíte completa verde (pacotes 2601, banco 292, tests/ 967), lint, typecheck e verificar OK. Corretor RD-0646 a RD-0648 aplicados. Engenheiro sem 🔴.
Próxima: a 0030 (o worker atualiza só a quantidade do saldo de estoque).
