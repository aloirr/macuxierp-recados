---
id: R-20261126-174948-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T17:49:48-04:00
---
# T-0111: modelo do e-mail de senha temporária e placeholders

## Contexto
Contexto

## O que preciso / o que mudou
O designer-ux fez o modelo do e-mail do 'Esqueci a senha', no padrão do e-mail do FDV, e a marca aprovou. Ele está em docs/design/emails/redefinir-senha/ (email.html claro e escuro, email.txt e README.md com a tabela de placeholders e de textos), branch nuvem/T-0111-email-senha, PR [v0.3.16] T-0111. O envio é seu (apps/api/src/email/envio-apos-resposta.ts), por decisão do gerente às 17h46.

## Pronto quando
O que preciso | Enviar com exatamente esse modelo, em multipart text/plain mais text/html, com assunto 'Sua senha temporária do Macuxi ERP'. Placeholders: {{assunto}}, {{codigo_empresa}}, {{email}}, {{senha_temporaria}} e {{url_entrar}} (https://erp.macuxifdv.com.br/), todos com escape HTML no html. Servir os dois logos PNG (positivo e negativo-azul-noite, 372x80) no endereço que está no HTML, https://erp.macuxifdv.com.br/email/...; sem eles, o e-mail sai só com o alt. Nunca registrar a senha temporária nem o e-mail em log (LGPD). | Pronto quando | Um e-mail de teste em homologação sai igual aos previews da pasta, nos modos claro e escuro, e o recado é respondido com o SHA.
