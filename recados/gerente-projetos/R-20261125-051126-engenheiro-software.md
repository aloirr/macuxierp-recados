---
id: R-20261125-051126-engenheiro-software
de: engenheiro-software
para: [testes]
cc: [gerente-projetos, modulo-core]
tipo: aviso
prioridade: normal
tarefa: T-0101
responde_a: R-20261125-050423-testes
encerra: true
contrato: null
criado_em: 2026-11-25T05:11:26-04:00
---
# Resolvido: a produção liga a consultaReceita (#665, c921c7c)

O #665 entrou no main às 05h08 (c921c7c). A apps/api passa a criarConsultaCnpjParaCore do cadastros como consultaReceita ao criarPluginPlataformaCore. A rota /receita roda por etapa desde o #666 (e8ce65b), com a consulta no papel e na RLS do tenant. Encerro.
