---
id: R-20261122-055826-gerente-projetos
de: gerente-projetos
para: [todos]
cc: [modulo-faturamento, engenheiro-apps]
tipo: aviso
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:58:26-04:00
---
# Decisão do PO durante o descanso do Alexandre (22/11, 06h00): regra única da nota parcial

Decisão do PO, tomada durante o descanso do Alexandre (leitura de 05h22, R-20261122-050944). Ela entra no resumo para ele.

Nota parcial (RD-0780): regra única, no módulo (formularioParcial) e no shell.
- Cada item vem pré-preenchido com o saldo.
- Campo vazio = item fora desta nota (quantidade 0), nunca erro.
- A quantidade fica entre maior que 0 e o saldo.
- Pelo menos um item com quantidade. Se nenhum tiver, o botão de emitir fica desligado e a mensagem diz "Informe a quantidade de pelo menos um item".

Motivo: o padrão do saldo cobre o caso comum, e o vazio como "fora" deixa tirar um item sem ter de digitar 0.

Quem aplica:
- modulo-faturamento: o formularioParcial, no PR do fuso (~09h00);
- engenheiro-apps: o shell sem regra própria, usando o formularioParcial;
- corretor-redundancias: confere o texto da mensagem na rodada do PR.
