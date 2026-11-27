---
id: R-20261127-174120-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:41:20-04:00
---
# Alexandre: login único na raiz erp.macuxifdv.com.br, destino pelo perfil (v0.3.26)

Texto literal do Alexandre no chat do Gerente Sênior, 27/11/2026 por volta das 17h40 (Manaus): "Em vez de entrar pelo /config entrei pelo erp.macuxifdv.com.br e deu certo. vamos fazer o seguinte. ACABE COM /bko e /config para login. o unico link de login e senha deve ser erp.macuxifdv.com.br o que vai definir a pagina a ser acessada é o perfil do usuario. o SUPERADMIN vai direto pra tela config o admin bko vai ter a tela bko liberada com o config dentro. O bko vai ter a tela de bko liberada. assim evita-se confusão. já desative tambem os endereços antigos como bko.macuxifdv.com.br e etc". Fato: o login voltou às 17h40 pela raiz e caiu em Plataforma → Empresas; o caminho /login?destino=/config segue falhando. Encaminhamento do PO para a v0.3.26, junto com o P1 (aviso de versão nova): (1) um único login, na raiz https://erp.macuxifdv.com.br, sem /login?destino= e sem login próprio no /bko e no /config; as rotas antigas de login redirecionam para a raiz; (2) depois do login, o destino é decidido pelo perfil: SUPERADMIN vai ao /config; admin do BKO vai ao BKO, com o /config acessível dentro dele; usuário do BKO vai só ao BKO; (3) endereços antigos: no código do ERP só existe erp.macuxifdv.com.br. api.macuxifdv.com.br é o Hub do Macuxi FDV (a integração usa) e NÃO será desativado. bko.macuxifdv.com.br não aparece no ERP e pode ser o BKO do FDV: nada se desativa nele sem o gerente do FDV confirmar de quem é e sem decisão escrita do Alexandre. (4) A lista final de endereços, com o dono de cada um, vai ao Alexandre antes de qualquer mudança em DNS ou Cloudflare, que só ele acessa.
