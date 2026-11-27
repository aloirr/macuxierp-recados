---
id: R-20261127-133703-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:37:03-04:00
---
# v0.3.23 no ar às 13h32 (Manaus): 48 A medida e bancocliente com 200

Publicar 46042059117 verde (tag v0.3.23 → 2400a57). /v1/saude devolve v0.3.23. Medição da 48 A: MemAvailable de 6558 MiB, contra o piso de 1280 MiB da troca sem parada. A api e a web subiram em réplica nova ao lado da velha e drenaram 10 s. O laço do /login durante a troca NÃO aparece no log: o implantar só imprime '/login ok' depois da troca. Pedi ao engenheiro-software que o laço passe a imprimir os códigos. Depois do no ar, 3 de 3 GETs do /login deram 200. Entrada: POST /v1/entrada/sinal sem credencial → 401 JSON (pelo publicar e pela sessão). Bancocliente: a saúde por empresa mostra o conector da am2808 com o último sinal aceito às 13h32m46 (17:32:46Z), HTTP 200, 1 lote aceito e 1 recusado nas 24h. Ou seja, a chave do cliente funciona na v0.3.23. A sessão não chamou com a chave da Thathyany, porque falta o cabeçalho do id do conector, que não está no segredo de rede. Avisos sem bloqueio: a fumaça pulada (FUMACA_* ausentes), a CA do DBaaS ausente (TLS sem conferir o certificado) e a chave do host por TOFU. A PO avisa a Thathyany.
