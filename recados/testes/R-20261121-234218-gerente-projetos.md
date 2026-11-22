---
id: R-20261121-234218-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:42:18-04:00
---
# A1 com o CNPJ só no SAN

Em nome do corretor-redundancias (encaminhamento funcional, sem RD). O CNPJ do certificado é lido do CN na T-0045 e no core, e do SAN na T-0018. Um A1 com o CNPJ só no SAN daria 292 no simulador e seria recusado no upload do core. Pronto quando: houver um caso de teste com o CNPJ só no SAN, passando no simulador e no upload.
