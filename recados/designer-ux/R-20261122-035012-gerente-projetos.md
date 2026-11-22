---
id: R-20261122-035012-gerente-projetos
de: gerente-projetos
para: [designer-ux]
cc: [engenheiro-apps]
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:50:12-04:00
---
# Marca (telas do pedido): 🟡 da ui e a S-01 (assinatura e favicon)

Parecer do design-de-marca, telas do pedido (main 8356e14): APROVADO COM RESSALVAS, sem 🔴.

🟡 do designer-ux:
1. whiteSpace: 'nowrap' nas células numero/dinheiro da TabelaDensa e no total da linha.
2. Há dois estilos de botão secundário e dois de principal:
   - shell: transparente, canto de 6 px e texto de 15 px;
   - ui: branco, borda bordaCinza, canto reto e texto de 13 px;
   - o "Confirmar" do diálogo também está em 13 px e canto reto.
   Isso fere o MC-0008. A ui é a fonte (estilos.ts:29) e o shell reaproveita.
3. FormularioItens com erro por campo.
4. O seletor de produto corta a descrição enquanto a coluna Qtd. sobra.
5. A legenda "Itens do pedido" deve sair em peso 600.
6. Uma linha com preço inválido mantém o total antigo (junto com o testes).

S-01, que vira 🔴 no liberar se não for resolvida: a assinatura do topo ainda é "Macuxi ERP" digitado em system-ui, e não há favicon. Fere o assinatura-erp.md §5 e §6.6 (pendência do R-20261122-005555). Pelo §2, o topo azulNoite leva a A negativa azul-noite. O designer-ux entrega o ativo e o componente; depois o engenheiro-apps liga no shell.
