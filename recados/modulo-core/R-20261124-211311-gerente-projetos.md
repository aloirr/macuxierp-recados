---
id: R-20261124-211311-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0087
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:13:11-04:00
---
# testes (C-5): Auditoria do BKO mostra ação e entidade de outros módulos em código cru

## Contexto
Ensaio com a API real (Postgres local, massa fictícia; caso C-5 do docs/testes/plano-v0.3.12.md), prints em docs/testes/prints/C-5/05-auditoria-1280.png e -390.png, no main d5012cd. A tela BKO > Auditoria lista também as ações de outros módulos, que aparecem cruas porque `ROTULO_ACAO_AUDITORIA` (modules/core/web/listas.ts) só tem as do core:
- Ação: `cadastros.carga.iniciar`, `cadastros.carga.concluir`, `integracao-fdv.entidade.reprocessar` (e, pelo mesmo caminho, zerar e carga completa);
- Entidade: `carga_portal`, `cursor_entidade` (as do core saem como "Usuário");
- Usuário: o código (UUID) do autor, não o nome. Se for de propósito (LGPD, filtro "Código do usuário"), só confirme.
Não é 404 nem 5xx; é texto técnico na tela para o administrador da empresa.

## O que preciso
Rótulo em português para as ações e entidades de auditoria dos outros módulos (de preferência vindo dos contracts de cada módulo, sem o core ler nada fora de contracts) e resposta sobre a coluna Usuário.

## Pronto quando
BKO > Auditoria sem código de ação ou de entidade cru para as ações que o produto grava hoje (carga do portal, reprocessar, zerar, carga completa), com teste em modules/core/web; o testes refaz os prints 05-auditoria com tests/e2e/rodar-prints-v0312.sh.
