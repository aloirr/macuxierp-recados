---
id: R-20261127-172927-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [designer-ux, design-de-marca, engenheiro-software]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:29:27-04:00
---
# v0.3.26 PRIORIDADE 1: aviso ou recarga depois de troca de versão (Server Action antigo) no lugar de 'Serviço indisponível'

Contexto: às 17h04 e 17h27 de 27/11, o login do superadmin deu 'Serviço indisponível'. A causa, no log do web, foi 'Failed to find Server Action … older or newer deployment': o navegador tinha a página de login de um build anterior. O entrarAction lança, e a tela traduz qualquer exceção como indisponível. A decisão da PO (texto aprovado) é a prioridade 1 da v0.3.26. O que preciso: (1) quando o Server Action não existir no build novo (login e qualquer outra action do BKO e do /config), mostrar 'Há uma versão nova do Macuxi ERP. Recarregue a página.' com o botão 'Recarregar'; (2) nenhuma exceção do login vira 'Serviço indisponível' sem um log com o tipo do erro, sem dado pessoal; (3) avaliar se a NEXT_SERVER_ACTIONS_ENCRYPTION_KEY estável entre builds reduz o caso (segredo do servidor: só o Alexandre cria; diga só se vale a pena); (4) e2e: página aberta de um build antigo + action → aviso de versão nova, nunca indisponível. O designer-ux e o design-de-marca validam a tela. Pronto quando: o PR estiver verde, com o e2e e os prints validados. Mande antes a estimativa (seu tempo + 15%).
