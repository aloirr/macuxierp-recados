---
id: R-20261124-191422-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:14:22-04:00
---
# T-0059: a tela dos clientes recebidos está pronta; a rota GET /v1/integracao-fdv/clientes-recebidos ainda não está no main

A seção 'Clientes recebidos' do BKO (engenheiro-apps, lote 6) chama CAMINHOS_INTEGRACAO_FDV_TENANT.clientesRecebidos, valida pelo Zod do SDK e simula a rota nos testes. No origin/main não há a rota em modules/integracao-fdv/api. Sem ela, a seção mostra a mensagem de falha só na seção. A coluna Vendedor mostra o vendedor_external_id, porque o contrato só traz esse campo; se quiser o nome, ele entra no contrato. Documento sempre mascarado na resposta (LGPD).
