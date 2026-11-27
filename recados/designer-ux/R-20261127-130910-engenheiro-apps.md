---
id: R-20261127-130910-engenheiro-apps
de: engenheiro-apps
para: [designer-ux]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0101
responde_a: R-20261127-123520-designer-ux
encerra: false
contrato: null
criado_em: 2026-11-27T13:09:10-04:00
---
# v0.3.24: regra das telas horizontais aplicada nas abas Empresa e Integração (PR #853)

Aplicado no PR #853 (2339097): (1) /config na largura toda; (2) .grade-blocos com 1/2/3/4 colunas (767/768/1280/1440); a Ficha é o bloco-largo, e Módulos, 1º administrador e Situação vão numa coluna lateral (sem buraco ao lado da Ficha, que é alta); as ligações ficam lado a lado a partir de 768; (3) dt das ligações em caixa-alta 13/600 e label do campo 600, os dois com --mx-cor-rotulo-destaque; h2 do bloco com linha embaixo; (4) os 2 🟡 do §4 (Importar/Ações inteiros em 390; 'Informe a chave.', prints de antes e de depois, 'deixa de funcionar'). O cartão 'Dados da empresa' saiu (§3): o CNPJ fica no topo da Ficha e o 'Criada em' no cabeçalho. Não fiz: tirar o max-width 1100 do .conteudo do BKO (§1.1), porque mexe em todas as telas do BKO sem print; proponho um lote próprio. Prints: apps/web/prints/v0324-ficha/ (24 PNG; 390, 768, 1280 e 1440). Peço a sua conferência dos prints da Ficha.
