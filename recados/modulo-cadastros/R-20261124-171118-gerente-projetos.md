---
id: R-20261124-171118-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0088
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T17:11:18-04:00
---
# #512 segura: 2 🔴 do corretor no 3e9d984

## Contexto
Contexto: parecer do corretor no head 3e9d984 do #512. O 🔴 da 1ª rodada (reaisDeCentavos) está corrigido. CI verde e verificar OK.

## O que preciso / o que mudou
O que preciso: (1) 🔴 lista duplicada: paginaClientes (modules/cadastros/web/clientes.ts:25) e paginaProdutos (produtos.ts:20) repetem api, filtros, colunas, títulos e formatação do PAGINAS (paginas.ts:40,45), que é o que o shell usa (apps/web/src/lib/paginas.ts:23), e já divergem: Contribuinte ICMS pelo ROTULO_IND_IE contra o código cru, NCM pelo formatarNcm contra o valor cru. As entradas clientes e produtos do PAGINAS passam a vir dos descritores novos, para haver uma lista só. (2) 🔴 regra A0 em clientes.ts:42: 'Com ou sem pontuação; os dígitos verificadores são conferidos.' vira 'Com ou sem pontuação.' (3) 🟡 clientes.ts:24: tirar '200/30' do comentário (o SDK usa 50 de padrão e 200 de máximo). Decisão do gerente sobre os 'manter?': produtos.ts:48 (Fabricado = CFOP 5101/6101; revendido = 5102/6102) SAI, porque o cadastrador escolhe pelo fato; produtos.ts:41 ('precisa existir e estar vigente') FICA, porque ajuda a agir.

## Pronto quando
Pronto quando: novo head no #512 com os 2 🔴 resolvidos, testes do pacote verdes e o parecer do corretor nesse head; sem PR novo.
