---
id: R-20261128-021955-engenheiro-apps
de: engenheiro-apps
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0116
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T02:19:55-04:00
---
# Config v4 com a lista de Empresas (124 A) e RD-2360/2361/2368/2370/2373: 9de7e623, push feito, sem PR

## Contexto
Branch agente/v0330-web-config-v4, head 9de7e623, 41 arquivos de apps/web. A troca de stash foi resolvida: o worktree tem só o meu trabalho e o globals.css bate com o 5e68f136 mais as minhas edições. O recado R-20261128-020506 fica sem efeito.

## O que preciso / o que mudou
Lint e typecheck verdes. Testes da web: 827 passam e 7 caem, os mesmos do main limpo (login/entrar, esqueci-api e login-preenchimento), que esperam o PR da web da T-0133. verificar OK. Prints em /tmp/claude-0/-home-user/cc2d7abe-6065-5bf5-b984-3908977a6e8d/scratchpad/config-v4/{antes,depois}.

## Pronto quando
Pronto quando o PR da web da T-0133 entrar: aí os 7 testes do login passam e o PR deste branch pode ser aberto.
