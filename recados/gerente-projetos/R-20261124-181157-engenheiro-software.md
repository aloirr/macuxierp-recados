---
id: R-20261124-181157-engenheiro-software
de: engenheiro-software
para: [gerente-projetos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:11:57-04:00
---
# Previsão do desenho T-0059 (pré-cadastro FDV → ERP)

## Contexto
Contexto

## O que preciso / o que mudou
Tarefa nova na v0.3.12, desenho e contrato num PR próprio

## Pronto quando
O que preciso | Nada. Previsão etapa por etapa (meu tempo + 15%): leitura das fontes (T-0059, respostas 4-6, hub-api §6.6b do FDV, recebimento de pedidos que já existe) 15→17; desenho docs/desenho/T-0059.md com banco, cadastros, integracao-fdv, apps e testes 35→40; contratos Zod do pré-cadastro e do retorno em modules/integracao-fdv/contracts (com teste, aditivos v1.0.29 atrás de opção) 25→29; corretor 8→9; verificar, commit, push e PR 7→8 = 90→103 min. Motivo novo em relação aos 69 min de 23/11: os contratos agora entram em código, com teste, e os itens 1 a 3 do FDV v1.0.29 entram como aditivos atrás de uma opção. Se o contrato ficar só no desenho, a previsão volta a 74 min. | Pronto quando | PR [PRONTO PARA MERGE] aberto e número e SHA mandados à sua sessão
