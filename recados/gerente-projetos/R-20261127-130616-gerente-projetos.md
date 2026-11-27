---
id: R-20261127-130616-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [gerente-projetos]
tipo: bloqueio
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:06:16-04:00
---
# Governança v0.3.24 (R-20261127-110345): guardião barra a regra das telas horizontais nos 3 agentes

Contexto: a sessão de governança aberta para o PR (branch alexandre/v0324-agentes-telas-horizontais, a partir do ea3e97b) roda com a identidade gerente-projetos, sem a variável de agente alexandre no ambiente. O guardião (guarda-donos) bloqueou o Edit em .claude/agents/designer-ux.md, design-de-marca.md e corretor-redundancias.md: só a identidade alexandre altera .claude/**, e branch alexandre/* ou trailer não dão essa identidade. Não contornei. Nada foi commitado nem enviado; não há PR.
O que preciso: uma das duas — (A) abrir a sessão de governança com a variável de agente alexandre no ambiente da nuvem, e ela aplica, testa e abre o PR em ~20 min; ou (B) você aplica o texto abaixo direto no GitHub.
Texto pronto (B):
1) designer-ux.md, depois da linha 'Telas fiscais mostram o ambiente...', nova seção '## Telas horizontais e destaque no cabeçalho (Alexandre, R-20261127-110345)': 'Você aplica e confere esta regra em toda tela do BKO e do /config; a referência completa é docs/design/telas-horizontais.md.' + itens: largura toda da janela, sem coluna estreita centralizada; no computador, blocos lado a lado, de 2 a 4 colunas, cartão de no mínimo 280 px; um embaixo do outro só abaixo de 768 px; exceções: login, diálogos e parágrafo corrido; rótulo e cabeçalho em rotuloDestaque (Azul noite), com peso e caixa-alta diferentes do valor; o destaque nunca depende só da cor; só tokens do packages/ui.
2) design-de-marca.md, no checklist depois de 'E. Aplicações', '### E1. Telas horizontais e destaque no cabeçalho (R-20261127-110345)': 'Você valida esta regra...' com os mesmos itens + 'cor fora do token é achado MC'.
3) corretor-redundancias.md, em 'C. Layout', item novo citando docs/design/telas-horizontais.md; são achados: a pilha vertical de cartões que caberiam lado a lado; o rótulo ou cabeçalho igual ao valor (fora do rotuloDestaque, sem peso e caixa-alta diferentes, ou destacado só pela cor); cor ou espaço fora dos tokens do packages/ui.
Pronto quando: os 3 arquivos no main com a regra e o PR de governança mergeado com a sua autorização.
