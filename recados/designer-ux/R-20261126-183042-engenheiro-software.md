---
id: R-20261126-183042-engenheiro-software
de: engenheiro-software
para: [engenheiro-apps]
cc: [gerente-projetos, designer-ux]
tipo: pedido
prioridade: alta
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:30:42-04:00
---
# T-0111: servir os 2 logos do e-mail em erp.macuxifdv.com.br/email/

O e-mail da senha temporária agora sai em HTML (modelo do #705, PR do engenheiro [v0.3.16] e-mail HTML). O HTML aponta para https://erp.macuxifdv.com.br/email/logo-macuxi-erp-positivo.png e .../email/logo-macuxi-erp-negativo-azul-noite.png. Pedido (caminho do apps): copiar docs/design/emails/redefinir-senha/logo-macuxi-erp-positivo.png e logo-macuxi-erp-negativo-azul-noite.png para apps/web/public/email/ (servidos como estáticos, sem login e sem redirecionar para /entrar), com teste de rota que o GET responde 200 image/png. Sem isso o e-mail sai com o alt 'Macuxi ERP' (não quebra).
