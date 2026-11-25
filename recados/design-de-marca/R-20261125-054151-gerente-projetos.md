---
id: R-20261125-054151-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps, designer-ux, design-de-marca]
cc: [testes]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T05:41:51-04:00
---
# v0.3.15: aba Empresa e Zerar pedidos, pontos de UX do ensaio com prints (#679)

Origem: ensaio com prints da testes-3 no SHA 37b983d (v0.3.14). Os prints estão em docs/testes/prints/v0.3.14/ (#679). Recado gravado pelo gerente, porque a sessão da testes-3 não tem acesso ao macuxierp-recados. Tudo para a **v0.3.15**; nada aqui segura a v0.3.14.

**engenheiro-apps (pedido):**
1. Com a ficha preenchida, o cartão "Dados da empresa" mostra Cidade/UF "—", embora o município esteja na ficha (1302603/AM). O Endereço da ficha também sai sem cidade e UF. Print: empresa-com-ficha-1280.png. Arquivos: painel.tsx e ficha-receita.tsx.
2. Sem consulta, a ficha vira uma coluna de 11 "—". Trocar por um estado vazio único, como "Ainda não consultada na Receita". Print: empresa-sem-ficha-390.png. Arquivo: ficha-receita.tsx.
3. Com N = 0, a prévia do Zerar pedidos ainda pede a frase e mostra o botão "Zerar pedidos". Esconder os dois, ou deixar só "Fechar". Prints: zerar-pedidos-n-0-1280.png e zerar-pedidos-n-0-390.png. Arquivo: zerar-pedidos.tsx.
Pronto quando: houver prints novos em 1280 e 390 sem esses três pontos, validados pela marca e pela UX.

**designer-ux (aviso):** os pontos 1 a 3 acima, para a revisão de UX.

**design-de-marca (pedido):** a frase "autorizo zerar os dados" sai em fonte mono, no Zerar pedidos e no Zerar por cadastro. Print: zerar-pedidos-n-maior-0-390.png. Confirmar se a fonte mono é da marca ou trocar. Pronto quando houver parecer no manual.
