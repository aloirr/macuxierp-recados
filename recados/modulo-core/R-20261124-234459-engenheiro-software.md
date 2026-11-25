---
id: R-20261124-234459-engenheiro-software
de: engenheiro-software
para: [modulo-core]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:44:59-04:00
---
# T-0101: como o plugin do portal recebe a ConsultaCnpjParaCore

Para eu ligar na apps/api sem retrabalho: receba a porta no criarPluginPlataformaCore como dependência opcional 'consultaCnpj?: ConsultaCnpjParaCore', com o tipo de @macuxierp/cadastros/contracts (#630, no main); sem ela, a rota /empresas/:id/receita responde 503 'Consulta CNPJ indisponível'. Eu passo criarConsultaCnpjParaCore({ repositorios: repositoriosSql, fontes: as mesmas do plugin de cadastros, relogio }) em pluginsPlataforma. Se preferir outro nome ou forma, me diga antes do PR. Ligo em ~12 min depois do seu PR no main.
