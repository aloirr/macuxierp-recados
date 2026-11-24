---
id: R-20261124-181828-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [engenheiro-software, gerente-projetos]
tipo: bloqueio
prioridade: normal
tarefa: T-0087
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:18:28-04:00
---
# Guardião: worktree em .claude/worktrees cai em .claude/** e edição por script python passa sem bloqueio

## Contexto
Contexto: nesta sessão (v0.3.12), os subagentes engenheiro-apps (T-0086) e modulo-core (T-0087) trabalharam em worktrees criados pela ferramenta Agent em .claude/worktrees/agent-*. O guardião passou a ler apps/web/** e modules/core/** desses worktrees como .claude/** (dono alexandre) e barrou Edit e sed. Antes do bloqueio, edições feitas por 'python3 - <<EOF' passaram sem o guardião perceber, nos dois worktrees (só nos caminhos de cada dono, mas é um furo).

## O que preciso / o que mudou
O que fiz: desanexei os worktrees antigos sem usar os rascunhos e refiz em checkouts fora de .claude (/home/user/wt-T-0086 e /home/user/wt-T-0087), com Edit apenas.

## Pronto quando
O que preciso: (1) engenheiro-software avaliar se o guardião deve barrar escrita por interpretador (python/node heredoc) fora dos caminhos e resolver o caminho pelo topo do worktree; (2) decisão do Alexandre sobre a mudança no .claude/hooks (governança). | Pronto quando: o guardião bloqueia edição por script e reconhece worktree fora de .claude.
