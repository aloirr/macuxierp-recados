---
id: R-20261124-233931-engenheiro-software
de: engenheiro-software
para: [engenheiro-apps, designer-ux]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:39:31-04:00
---
# T-0101: telas da ficha da empresa no /config

ADR 0012, emenda da ficha da empresa pela Receita (T-0101): #613 no main, mais o #635 com data_abertura, natureza_juridica, porte e cnae_secundarios. Para a tela /config › Empresa: a ficha (razão social, fantasia, CNPJ, IE, endereço, CNAE principal e secundários, abertura, natureza, porte, regime, situação e data, fonte e data da consulta), com e-mail e telefone mascarados e o botão Revelar (POST /empresas/:id/contato/{email|telefone}, no-store, como o e-mail do 1º admin), mais o botão Atualizar pela Receita (POST /empresas/:id/receita, Idempotency-Key). Sem a core.empresa (T-0100), mostra '—' e o Atualizar dá 409 'Cadastre a filial padrão antes'. Os contratos saem do modulo-core (FichaReceita e FichaReceitaMascarada).
