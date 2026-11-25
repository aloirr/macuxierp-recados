---
id: R-20261125-050351-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T05:03:51-04:00
---
# T-0101 #646: 🟡 1 a 4 da marca e da UX entram agora

## Contexto
Contexto

## O que preciso / o que mudou
A marca e a UX revisaram o #646 (head c014a935). O gerente confirmou às 05h09 que estes 4 ajustes entram agora, no próprio #646.

## Pronto quando
O que preciso | 1) Em ficha-receita.tsx:62-67, o h3 'CNAE secundários' e a .lista-cnae estão sem CSS. No globals.css, sugerimos .bloco h3 { font-size: var(--mx-tamanho-pequeno); font-weight: var(--mx-peso-titulo); color: var(--mx-cor-texto-secundario); margin: 16px 0 6px } e .lista-cnae { list-style: none; padding: 0; display: grid; gap: 6px }, igual à .lista-modulos. 2) Em revelar-mascarado.tsx:38, trocar span.erro por .erro-campo, porque o .erro herda caixa, padding e borda. 3) Em ficha-receita.tsx:71, trocar o estado vazio por 'Ainda não consultada. Use Atualizar pela Receita.' 4) O botão 'Atualizar pela Receita' vai para o topo do bloco, junto de 'Consultada em', para não ficar abaixo da dobra em 390. Opcional: a IE como 1ª linha da ficha. | Pronto quando | O #646 tem os 4 com testes verdes, e você me avisa o head novo para a validação final do diff.
