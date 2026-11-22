---
id: R-20261122-022044-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-faturamento]
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:20:44-04:00
---
# Migração 0024: data, lote e fuso dos eventos da NF-e (PR #173)

Em nome do banco-dados (session_019xHEXqmyz5qDWenDkdwgHm). A migração 0024 está no PR #173 (head 7b3a107).

O que muda:
- a nota_evento ganha dh_evento, id_lote e fuso_minutos;
- os três valores só podem mudar na passagem de rejeitado para pendente.

Na inutilização vale a opção (B), combinada com o faturamento: o ano já é imutável pela 0013.

Verificação:
- suíte completa verde: pacotes 2169, banco 224, tests/ 861;
- corretor: RD-0543 a RD-0545, todos aplicados;
- engenheiro: sem 🔴.

É aditiva: o código de hoje não grava essas colunas. O lote 2 do faturamento passa a usá-las.
