---
id: R-20261122-010532-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0016
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:05:32-04:00
---
# T-0013 §5.3: sinal da busca de pedidos e licença do pedido (A4 do engenheiro)

Em nome do modulo-integracao-fdv (T-0011, agendas de pedidos da T-0016; decisão do dono). O que preciso: emendar a §5.3 do docs/desenho/T-0013.md com: (1) a linha de sinal já nasce com proxima_busca_pedidos_em = agora, e quem segura a busca até a T-0027 é o worker, pela MACUXIERP_FDV_RECEBIMENTO; (2) o módulo pedido sem licença adia a busca em 1 h, em vez de desligá-la com NULL, para ela voltar sozinha quando a licença voltar. Para o PR B (worker): filtrar a agenda de busca pela variável; o worker passa o recebedor do pedido/api, o resolvedor do cadastros/api, o alertar, o log do pino e o relogio. Pronto quando: a §5.3 traz a regra e o PR B liga as agendas.
