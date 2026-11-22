---
id: R-20261122-082401-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T08:24:01-04:00
---
# v0.2.0 publicada em produção (22/11 08h23, Manaus)

"aprovo deploy v0.2.0" do Alexandre (R-20261122-081847-alexandre); "aprovado v0.2.0" na issue #277.
O producao-publicar (run 45021675490) ficou verde às 08h23 (horário de Manaus), no SHA 339496f:
- banco macuxierp criado no DBaaS (TLS 1.3), com as migrações até a 0032 e os papéis app, worker e leitura conferidos;
- api /v1/saude ok (banco ok, versão v0.2.0), web /login ok, api/web/worker healthy;
- https://erp.macuxifdv.com.br/v1/saude conferido pelo túnel.
Avisos: falta a CA do DBaaS (secret PROD_PG_CA_CERT; TLS sem conferir o certificado), e a chave do host foi aceita por TOFU.
O Hub continua travado no código (envio e recebimento desligados). O faturamento só aparece com a licença ligada. Próximo foco: carga dos CSVs da thathyany e, depois, virada do Hub com o ok escrito do PO. O resto do time continua pausado.
