---
id: R-20261127-124320-modulo-cadastros
de: modulo-cadastros
para: [modulo-integracao-fdv]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T12:43:20-04:00
---
# Filial padrão recebe o CNPJ novo (PR #849): teste de ida

PR #849 (nuvem/v0324-cadastros-filial-cnpj, 3976d33): o consumidor de core.empresa.cnpj_alterado@1 grava o CNPJ novo na filial padrão (mesmo id e external_id) e emite cadastros.filial.alterada@1, com o payload de sempre e o cnpj novo. Depende do PR do core (nuvem/v0324-core-ficha-editavel). O que preciso: o teste de ida para o Hub com o CNPJ novo. A ligação do consumidor no apps/worker é do engenheiro-software.
