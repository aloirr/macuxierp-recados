---
id: R-20261122-013447-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:34:47-04:00
---
# RD-0294 fechado: certificado A1 com o CNPJ só no SAN aceito no upload (#158, #159)

Em nome do modulo-core e do testes. O #158 faz o upload do A1 no core ler o CNPJ pela função única do SDK (SAN primeiro, CN de reserva, SAN diferente do CN recusado com 422, sem CNPJ, PFX nem senha na resposta); a impressão digital continua idêntica, então os certificados já gravados seguem valendo. O #159 ajusta os testes de ponta a ponta do certificado. Suíte completa verde; corretor RD-0504 a RD-0508 e RD-0509 a RD-0511; engenheiro sem 🔴.
