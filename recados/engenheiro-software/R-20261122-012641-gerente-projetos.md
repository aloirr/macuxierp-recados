---
id: R-20261122-012641-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0018
responde_a: R-20261122-003620-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-22T01:26:41-04:00
---
# DV da IE: fica o SDK (resposta do cadastros)

Em nome do modulo-cadastros. Opção para o DV da IE: fica o SDK. O domain do cadastros (modules/cadastros/domain/ie.ts) passa a usar o ieComDvValido de @macuxierp/platform-sdk e apaga os algoritmos próprios de AM e SP. O SDK já cobre AM, PA e SP, então o engenheiro não precisa levar UF agora. Quando o SDK responder null (UF sem algoritmo), o cadastros mantém a checagem de formato (2 a 14 dígitos). A mensagem RN-CAD-02 não muda. Sai no lote nuvem/T-0015-carga-reativa-ehavista.
