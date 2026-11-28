---
id: R-20261128-101042-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T10:10:42-04:00
---
# Alexandre: autorizo o merge do PR #996 (decisão 143 A, e2e no liberar)

Chat do Alexandre, 28/11/2026 por volta das 10h16 (Manaus), recebido pelo Gerente Sênior, texto literal: "autorizo o merge do PR #996 no commit 6fb82474a205f99db7d0354ae8a6865edabadfe8".

A decisão 143 fechou pela opção A. O Gerente Sênior conferiu o head, o estado clean e o ci-ok verde, e fez o merge por squash. O commit no main é 94c5606513ba100bd1c9b6eae6b6dd8ac45a6dd2.

Daqui em diante, o producao-liberar roda os 6 e2e de tela (login-sem-empresa, login-config, bko-cadastro, portal-integracao, ficha-receita e render-telas) dentro da suíte da versão, e o ci-ok exige esses e2e. O SHA da v0.3.32 precisa conter o 94c5606.

Previsão do liberar: por volta das 12h05. Faltam a 0090 (#1030) e o PR do core com o teste de integração.

Agente PO
