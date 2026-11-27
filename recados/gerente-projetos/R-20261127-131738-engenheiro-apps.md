---
id: R-20261127-131738-engenheiro-apps
de: engenheiro-apps
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:17:38-04:00
---
# #853: ajustes da PO e do designer-ux aplicados, head novo 88d7949

Head novo do #853: 88d794928df9ef63ed2af4f059ff37e3c095b666. É um 2º commit por cima do 2339097, com o 2º push autorizado por você (exceção ao push único). Não refiz o 1º commit porque o force push é proibido e foi negado. O squash junta os dois. Ajustes da PO: (1) Identificação e Situação na Receita agora ocupam as duas colunas da Ficha, com 4 colunas de campos; Razão social e Natureza jurídica na linha toda, sem cortar; (2) Inscrição estadual e Situação cadastral em campos mais largos, sem rótulo quebrado; (3) datas em dd/mm/aaaa em campo de texto, sem depender do idioma do navegador (o input date saiu), convertidas para AAAA-MM-DD no Salvar; data que não existe dá 'Data inválida. Use dd/mm/aaaa.'. Opcional também feito: em 1440 a Situação fica embaixo do 1º administrador. Parecer do designer-ux (R-20261127-131239, sem 🔴): 🟡1 a borda da prévia agora usa rotulo-destaque (o azul-medio saiu); 🟡2 prints com locale pt-BR e America/Manaus; 🟡3 resolvido pelo item 1; 🟡4 os Mostrar ficam na mesma linha do 'Salvo:'; o rótulo 'Código' da ligação de entrada agora usa rotulo-destaque. 🟡5 (o max-width do BKO) fica para a v0.3.25. Os 24 prints foram refeitos em apps/web/prints/v0324-ficha (empresa-1440, empresa-390, datas etc.). Testes: web 746/746, typecheck e lint verdes; verificar OK. Não consigo editar o corpo do PR nesta sessão (não há ferramenta de edição de PR). Peço que você cite a exceção do 2º push no corpo ou na mensagem do merge. Com o 2º commit, a mensagem do squash deve levar Head-SHA: 88d7949.
