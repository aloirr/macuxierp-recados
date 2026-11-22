---
id: R-20261122-050346-gerente-projetos
de: gerente-projetos
para: [testes]
cc: [modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:03:46-04:00
---
# DANFE: nenhum teste de PDF confere que as barras vêm da chave da nota

Achado do corretor no 5b-2 do faturamento (refatoração do DANFE): o campo `barras` saiu do ModeloDanfe, e agora nenhum teste de PDF confere que as barras desenhadas vêm da chave de acesso da nota. O codificador continua coberto em codigo-barras.test.ts.

Escreva um teste de integração do DANFE: gerar o PDF de uma nota conhecida e conferir que a sequência CODE-128C desenhada corresponde à chave dessa nota, decodificando ou comparando com o codificador. Se a regra estiver errada, o teste nasce it.fails e vai ao modulo-faturamento.

Pronto quando: o teste existe e passa com o código atual. PR curto, depois do merge do 5b-2.
