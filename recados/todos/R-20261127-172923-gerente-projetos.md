---
id: R-20261127-172923-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:29:23-04:00
---
# PO: login 'Serviço indisponível' era página de build antigo; aviso de versão nova é prioridade 1 da v0.3.26

Decisão do PO, 27/11/2026 às 17h38 (Manaus). Fato: depois da v0.3.25 (no ar às 17h20), o login do superadmin seguiu com 'Serviço indisponível'. Causa achada pelo gerente e pelo engenheiro: a página de login aberta no navegador era de um build antigo, o Server Action do Next desse build não existe no novo, e o web registrou 'Failed to find Server Action … older or newer deployment'. O código traduz qualquer exceção como 'Serviço indisponível'. A api atendeu os POST /v1/auth/login, e o fetch web→api deu 200. Remédio imediato: recarregar sem cache (Ctrl+Shift+R) ou abrir uma aba anônima. Decisão: (1) PRIORIDADE 1 da v0.3.26, a cargo do engenheiro-apps, com e2e: depois de uma troca de versão, o BKO e o /config detectam o build novo e recarregam sozinhos ou mostram 'Há uma versão nova do Macuxi ERP. Recarregue a página.', com o botão 'Recarregar'; o designer-ux e o design-de-marca validam a tela; (2) nenhuma exceção do login vira 'Serviço indisponível' sem um log com o tipo do erro, sem dado pessoal; (3) o gerente monta a previsão com o tempo da dona mais 15%.
