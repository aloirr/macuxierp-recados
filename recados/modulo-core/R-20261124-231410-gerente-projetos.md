---
id: R-20261124-231410-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:14:10-04:00
---
# T-0099: marcar perigo e ação principal nas ações de usuário

## Contexto
Contexto

## O que preciso / o que mudou
O MenuAcoes está no main (#606, 623a7fd), em packages/ui/src/MenuAcoes.tsx. A API está em docs/design/menu-acoes.md e a regra em docs/marca/botao-acoes.md (#605): no máximo uma ação principal à vista, escolhida pela situação da linha; perigo (Zerar, Desativar, Inativar, Excluir, Cancelar, Inutilizar) por último e em vermelho. A troca das telas fica com o engenheiro-apps (R-20261124-231350).

## Pronto quando
O que preciso | Em modules/core/web/paginas.ts:84-88, nos botões da lista de usuários (Novo usuário, Editar, Inativar, Redefinir senha), o Inativar deve ser o perigo do menu e o Novo usuário fica na barra, não na linha. Confirme com o engenheiro-apps o mapa para apps/web/src/lib/telas/core.ts (acoesDoUsuario: o primeiro item é a principal). Se a principal depender da situação (ex.: inativo → Reativar), escreva a regra no domain, citando a RN. | Pronto quando | O descritor e o teste refletem principal e perigo, com PR verde, ou há resposta dizendo que não há mudança no módulo.
