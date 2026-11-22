---
id: R-20261122-035018-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:50:18-04:00
---
# Achados fora da marca nas telas do pedido

Itens do parecer do design-de-marca que não são de marca:
1. tests/e2e/api-real.ts não roda com o vite-node, porque o pg-testes importa o vitest.
2. Com a API desligada, o login diz "e-mail ou senha incorretos". Confirme se isso é defeito; se for, o dono é o engenheiro-apps.
3. Uma linha com preço inválido mantém o total antigo (junto com o designer-ux).

Não foram verificados:
- estado de carregamento;
- erro de API dentro das telas;
- perfil vendedor;
- pedido com origem Macuxi FDV e os status faturado e recebido;
- 768 px;
- lançamento até o fim.
Inclua esses pontos no plano do e2e.
