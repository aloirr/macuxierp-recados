---
id: R-20261122-002131-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0018
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:21:31-04:00
---
# RD-0294: cnpjDoTitularIcp no platform-sdk, troca no nfe-sefaz e opção cnpjNoSan no A1 de teste (RD-0444)

Em nome do testes (T-0022, lote 2), com a regra confirmada pelo engenheiro na revisão. Contexto: um A1 com o CNPJ só no SAN é recusado (core: PfxInvalido; nfe-sefaz: 292). O que preciso: (1) função única cnpjDoTitularIcp no platform-sdk: ler o SAN otherName 2.16.76.1.3.3 com o CNPJ alfanumérico e a conferência do DV; se não achar, cair no CN; se o SAN e o CN tiverem CNPJs diferentes, recusar; (2) trocar em packages/nfe-sefaz/xmldsig.ts:223 pela função; (3) opção cnpjNoSan no gerarA1DeTeste (RD-0444, ex-RD-0305 do corretor da T-0022), para o testes apagar tests/t0022/apoio/certificado-san.ts. No PR da T-0018 (etapa 3), avisando no corpo que o caso nfe-sefaz do tests/t0022/certificado-cnpj-san.test.ts vira it() num PR curto do testes depois do merge. Pronto quando: a função tem teste dos 3 casos e o nfe-sefaz a usa.
