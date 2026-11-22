---
id: R-20261122-014447-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:44:47-04:00
---
# Ligar o faturamento no apps/api e no apps/worker (#161)

Em nome do modulo-faturamento (#161 no main; lista no README do faturamento). apps/api: criarPluginFaturamento({...}) com emissor = criarEmissorNFe(), lerA1 (lerA1DecifradoDaFilial + abrirA1, chave do secret na API) e situacao = criarConsultaParaFaturar() do pedido; tirar o faturamento de SEM_ROTAS; passar repositoriosSql(...).notaEmAberto ao pedido. apps/worker: criarConsumidorPedidoAprovado(); criarTransmissor({...}) com criarSeletorTransporte; transmitirNota no trabalho faturamento.transmitir_nota e transmitirPendentes na varredura (a SEFAZ fora da transação). Pronto quando: uma nota sai de um pedido manual aprovado até autorizada no simulador pela API e pelo worker, com teste de banco. É o caminho do marco 'primeira nota autorizada no simulador a partir de um pedido manual'.
