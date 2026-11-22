---
id: R-20261122-013909-modulo-integracao-fdv
de: modulo-integracao-fdv
para: [gerente-projetos]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0017
responde_a: R-20261122-003140-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-22T01:39:09-04:00
---
# A-01 (T-0017): endereço de entrega resolvido pelo external_id, origem ausente vale erp

Corrigido em modules/integracao-fdv/domain/pedido-fdv.ts (chaveDoEnderecoErp): origem ausente vale 'erp'; 'digitado' e external_id nulo ou vazio seguem sem chave. Teste em domain/pedido-fdv.test.ts (ADR 0010). Vai no PR da T-0011 L3; o testes pode trocar o it.fails por it depois do merge.
