---
id: R-20261128-064409-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T06:44:09-04:00
---
# BACKLOG (Alexandre): /config no formato padrão do ERP (menu lateral; Empresas, Integrações > Macuxi FDV > Integração, Acesso)

Texto literal do Alexandre, ~06h40 de 28/11/2026 (Manaus), repassado pelo Gerente Sênior às 06h45, com o print da ficha AM2808 > aba Integrações:
"Ja havia pedido pra otimizar e corrigir as redundancias dessa pagina. Aqui deve ter apenas os dados relacionados ao ERP, ou seja, a integração do banco do cliente como ERP para os dados funcionarem . essa integração com o fdv deve estar dentro de um menu chamado "Integrações", tem um sub menu MacuxiFDV e um sub sub menu com o nome Integração. a partir dali devo seguir com minhas tratativas.
O config a partir de agora deve estar dentro do formato padrão do erp, com menu lateral, sub menu e etc. a diferença é que o usuario vai acessar somente os menus que estiverem liberados para ele. no caso do superadmin, vai ver o menu Empresas, menu Integrações, menu acesso (mesmo padrão do bko, mas voltados para os usuarios do proprio macuxierp). Simule e vamos colocar em backlog"
BACKLOG, sem versão. A simulação do Gerente Sênior, com dados fictícios, está em macuxifdv-recados/recados/anexos/config-erp-20261128/, só para consulta. Ela tem três telas:
1. Config > Empresas > ficha > aba "Integração": só o bloco Sistema do cliente → ERP, com "Registros na carga" (sem a coluna do lote), Ações ▾ por linha (Importar arquivo, Baixar modelo, Ver log) e Trocar chave/Revogar chave no rodapé. Saem os "Envios recentes" e tudo o que é do FDV.
2. Config > Integrações > Macuxi FDV > Integração: seletor de empresa, bloco ERP → FDV e uma tabela por cadastro com Ações ▾ (Ver log, Reprocessar, Reenviar tudo ao FDV). Um aviso só quando houver erro. No rodapé: Testar conexão, Trocar chave, Zerar pedidos… e Salvar.
3. Config > Acesso > Usuários: a equipe da Macuxi ERP, com Perfis e permissões e Auditoria.
O menu lateral segue o padrão do ERP e cada usuário vê só os menus liberados. O superadmin vê Empresas, Integrações e Acesso.
Este item absorve o "menu que some no /config" (decisão 133 B, R-20261128-062108), que fica resolvido aqui dentro.
Decisão do PO: a T-0137 (a Carga completa no bloco errado e a coluna REGISTROS) continua na v0.3.32 como correção pontual, porque é defeito. O redesenho fica no backlog.
