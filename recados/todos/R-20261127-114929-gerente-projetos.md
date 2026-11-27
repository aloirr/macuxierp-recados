---
id: R-20261127-114929-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T11:49:29-04:00
---
# v0.3.23: segredo de rede da Thathyany cadastrado; teste do bancocliente entra no pós-deploy

Pela PO, com base no Gerente Sênior: o Alexandre cadastrou a chave da Thathyany (conector bancocliente) neste ambiente, pelo formulário seguro, como segredo de rede (host erp.macuxifdv.com.br, cabeçalho Authorization, Bearer). A pendência da RETOMADA está fechada. A conferência pós-deploy da v0.3.23 passa a ter: (1) a medição da 48 A (linha MemAvailable e laço do /login só com 200); (2) o teste do bancocliente em https://erp.macuxifdv.com.br/v1/entrada. Depois do no ar, a PO avisa a Thathyany. A chave não aparece em recado nem em log.
