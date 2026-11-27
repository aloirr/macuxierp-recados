---
id: R-20261127-174157-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:41:57-04:00
---
# Correção do R-20261127-174120: o ERP não mexe em subdomínio do FDV

Registro do PO, 27/11/2026 às 17h43 (Manaus). O gerente do FDV confirmou, pela sessão do Gerente Sênior, que bko.macuxifdv.com.br, config.macuxifdv.com.br, fdv.macuxifdv.com.br e api.macuxifdv.com.br são do Macuxi FDV (o api. é crítico, usado pelos apps Campo e Gestão). Do ERP é só erp.macuxifdv.com.br. Escopo da v0.3.26 para o pedido do login único: (1) um login, na raiz de erp.macuxifdv.com.br; (2) /bko e /config do ERP sem login próprio, e as rotas antigas de login do ERP redirecionando para a raiz; (3) destino pelo perfil. O ERP não mexe em nenhum outro subdomínio, em DNS nem na Cloudflare. O corte dos endereços do FDV, se o Alexandre quiser, é com o FDV, pelo rito da ADR 0071 deles; o Gerente Sênior está perguntando isso a ele.
