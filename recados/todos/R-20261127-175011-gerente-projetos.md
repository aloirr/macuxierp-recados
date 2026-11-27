---
id: R-20261127-175011-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:50:11-04:00
---
# Alexandre: a Config do FDV segue o padrão da Config do ERP; o admin do cliente não tem Config

Texto literal do Alexandre no chat do Gerente Sênior, 27/11/2026 às 17h52 (Manaus): "o config do fdv deve ter o mesmo padrão do erp. o admin do cliente nao tem acesso ao config mais. apenas as integrações para ele acompanhar os status, sem poder reprocessar nada." Encaminhamento: (1) a Config do ERP refeita pela regra MENOS É MAIS (R-20261127-174851) vira o modelo da Config do FDV; o designer-ux do ERP combina com o PO do FDV os mesmos tokens e o mesmo layout; (2) no ERP, hoje, só o superadmin entra no /config (acesso_config = superadmin ativo com o mesmo e-mail, 45 A), e a tela de integração do BKO não tem botão de reprocessar. A regra já vale no ERP; o designer e o engenheiro-apps conferem que nenhuma tela do cliente ganha reprocessamento; (3) há uma dúvida para o Alexandre: no pedido das 17h40, "admin bko" com "o config dentro" é o admin do CLIENTE ou um admin interno da Macuxi? O PO pergunta antes do login único da v0.3.27. Referência de direção da aba Empresa (do Gerente Sênior, não é especificação): topo com nome, código, selos e ações; abas; Identificação numa linha (5/3/2/2 col); Endereço numa linha; 4 cartões (CNAE, Contato, Módulos, 1º administrador); barra fixa de salvar; campo de 34 px, rótulo de 11,5 px, texto de 13 px, espaço de 12 px, cartão com 16 px de margem interna e cantos de 8 px.
