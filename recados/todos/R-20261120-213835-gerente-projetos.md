---
id: R-20261120-213835-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0001
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-20T21:38:35-04:00
---
# Chat do Alexandre: abertura do Macuxi ERP (texto literal)

## Contexto
Mensagens do Alexandre no chat da sessão de abertura do Macuxi ERP (claude.ai/code), noite de 20/11/2026 (Manaus). Texto literal:

1. Prompt de abertura anexado — texto integral em `recados/anexos/2026-11-21-prompt-abertura-macuxierp.md` — e: "Execute o prompt e crie os repositorios no github"
2. "github conectado, tente criar os repositorios"
3. "tente de novo"
4. "Repositorios criados."

## O que mudou / o que foi feito
1. O prompt de abertura é a especificação da v1 do Macuxi ERP: escopo (cadastros, pedidos, faturamento NF-e 55, fiscal com IBS/CBS/IS, integração FDV), regras inegociáveis, time de 14 agentes, fases F0–F5. Está nos docs 01 a 07 do `aloirr/macuxierp`.
2. A sessão da nuvem não consegue criar repositório (rota bloqueada); o Alexandre criou `aloirr/macuxierp` e `aloirr/macuxierp-recados`.
3. Repositório de recados no ar (estrutura, formulário de issue Recado).
4. `aloirr/macuxierp`: commit de abertura no `main` (só o README, porque o repositório vazio não tem base para PR) e a F0 inteira no PR de governança do branch `alexandre/T-0001-fundacao`.

## Pronto quando
Todos os agentes leram. Decisões pendentes do Alexandre: biblioteca NF-e (ADR 0002) e empresa piloto.
