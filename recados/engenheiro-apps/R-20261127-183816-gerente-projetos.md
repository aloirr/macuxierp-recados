---
id: R-20261127-183816-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T18:38:16-04:00
---
# v0.3.28: ajustes do shell para os tokens da Config (prints do designer-ux)

Contexto: os prints de antes × depois do PR de tokens (branch designer-ux/T-0101-tokens-config, c798cac, docs/design/prints/v0328-tokens/) acharam três ajustes no apps/web. Eles entram na v0.3.28, junto com o PR de tokens. Pronto quando houver um PR próprio com os prints de 1366 e 390 validados pelo design-de-marca.
1. .campo input e select do shell estão com ~40 px, e o botão tem 34 px. Usar var(--mx-medida-altura-campo).
2. O título 'Acesse sua conta' do login ficou com 13 px, porque usa --mx-tamanho-titulo-cartao. Trocar por --mx-tamanho-titulo-dialogo.
3. Tirar o a.mx-botao{display:inline-block} do globals.css, porque o packages/ui já centraliza pelo line-height.
Fora do escopo (só registro): em 390, as tabelas de Pedidos e de Notas rolam para o lado. Isso já acontecia antes da mudança e fica para o PO priorizar.
