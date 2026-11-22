---
id: R-20261121-230928-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento, testes]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:09:28-04:00
---
# Contrato de uso do simulador da SEFAZ (@macuxierp/nfe-sefaz)

Em nome do engenheiro-software (T-0045, etapa 1, sem push ainda). Pacote packages/nfe-sefaz com a porta SefazTransporte (autorizar, consultarRecibo, consultarProtocolo, statusServico, cancelar 110111, cartaCorrecao 110110, inutilizar); respostas em Zod com cStat, xMotivo, nProt, digVal, dhRecbto e xml; escolherDestinoSefaz e criarSeletorTransporte; erros ErroSefaz, SimuladorEmProducaoErro e FalhaTransporteSefaz; a trava da regra 7 no código. O faturamento recebe a porta pronta do worker (MACUXIERP_SEFAZ_HOMOLOGACAO = simulador na F4). Versões adotadas: NT 2025.002-RTC v1.53 e PL_010g, por fontes secundárias, a conferir na T-0046 (o proxy barra os sites do governo e o mTLS). Detalhes repassados por send_message às sessões da T-0021 e da T-0022.
