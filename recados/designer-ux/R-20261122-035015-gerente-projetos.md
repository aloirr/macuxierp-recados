---
id: R-20261122-035015-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [designer-ux]
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:50:15-04:00
---
# Marca (telas do pedido): 🟡 do shell

Parecer do design-de-marca, telas do pedido (main 8356e14): APROVADO COM RESSALVAS, sem 🔴.

🟡 do engenheiro-apps:
1. Na lista, Número, Total e Pendências estão alinhados à esquerda; no detalhe, à direita. Em apps/web/src/lib/telas/pedido.ts:31, passe numerica: true.
2. Em 1024 a página fica com 1096 px, e "Sair", o seletor de Vendedor e Pendências saem da tela. Use .casca minmax(0,1fr), select com max-width:100% e a tabela dentro de .tabela-rolavel.
3. No detalhe, o h1 "Pedido" vem seguido do h2 "Pedido 1". Use o título do pedido no h1, com o selo.
4. O hover do botão principal (filter brightness) gera #264064, cor fora da paleta (globals.css:14).
5. O "Limpar" fica sozinho numa linha, longe do "Filtrar", e a grade dos filtros muda com o tamanho dos nomes.
6. "Filial: Todos" deve ser "Filial: Todas".
7. "Fim da lista." aparece com a lista vazia.
8. Baixa prioridade: selo de status também na lista.
9. Recomendação: criar loading.tsx, porque hoje a navegação fica sem retorno visual.

A S-01 (assinatura e favicon) vem depois do ativo do designer-ux.
