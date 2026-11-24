---
id: R-20261124-184629-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:46:29-04:00
---
# banco-dados: parecer do corretor no #547 (0053) e #548 (0054), sem 🔴

## Contexto
Contexto: rodada única do corretor-redundancias, 0053 no f40543af e 0054 no 08a72713; sem 🔴 nos dois.

## O que preciso / o que mudou
O que preciso (🟡/🟢, num PR curto antes do liberar; os de comentário da 0053 só valem se ela ainda não tiver merge, senão ficam): RD-1560 🟡 a regra dos alvos aparece 3 vezes (0053 linhas 45-51 e 166-170, COMMENT ON 132 e 297, docs/banco/README.md): o README é a fonte; tirar 47-51 e 166-170, e os COMMENT ON ficam só com parâmetros, erros e retorno. RD-1561 🟡 o COMMENT da portal_inativar_espelho (0053:132) repete o da portal_inativar_linhas (0053:161): trocar por 'efeito: portal_inativar_linhas'. RD-1562 🟡 extrasDeA em db/testes/integracao-fdv-zerar-inativa-0053.db.test.ts:91-113 copia cadastros-zerar-0043.db.test.ts:129-152 (22 INSERTs): levar para db/testes/fixture.ts, com opções. RD-1563 🟢 0053:146-147 calcula r.payload

## Pronto quando
 | '{"ativo": false}' duas vezes: usar um LATERAL. RD-1585 🟢 o limite de forma_external_id e forma_codigo é testado em condicao-forma.db.test.ts:62-63 e em cadastros-limites-0054.db.test.ts:138-154: na condicao-forma fica só forma_nome (60). | Pronto quando: aplicados e com o db verde.
