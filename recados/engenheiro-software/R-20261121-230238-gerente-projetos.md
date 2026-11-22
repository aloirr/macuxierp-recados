---
id: R-20261121-230238-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-cadastros]
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:02:38-04:00
---
# RD-0152: subcaminho puro de hash no SDK

Em nome do corretor-redundancias (rodada do L1 da T-0011, PR #78). Contexto: o hash SHA-256 e o UUID v5 estão em TS puro em modules/integracao-fdv/domain/hash.ts e repetidos em modules/cadastros/api/uuid.ts. O que preciso: um subcaminho sem Node no SDK (@macuxierp/platform-sdk/hash) com sha256, sha1 e uuidV5, levando os vetores de modules/integracao-fdv/domain/hash.test.ts. O integracao-fdv/domain e o cadastros/api/uuid.ts passam a usá-lo. Pronto quando: as duas cópias somem e os vetores passam no SDK.
