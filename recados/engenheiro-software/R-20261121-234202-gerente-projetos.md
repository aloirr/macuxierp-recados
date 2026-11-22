---
id: R-20261121-234202-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:42:02-04:00
---
# Ligar o pedido no apps/api e no apps/worker

Em nome do modulo-pedido (lote 2 da T-0015). API: em apps/api/src/modulos.ts, criarPluginPedido(dependenciasDeProducao(consultaCadastros)) no lugar de 'pedido' em SEM_ROTAS. Worker: criarRecebedorFdv({...dependenciasDeProducao(consultaCadastros), licencas: LicencasPg, outbox: OutboxPg, auditoria: AuditoriaPg, relogio}) entregue ao integracao-fdv; exportadorPedido na lista do LGPD; criarConsultaParaFaturar() para a porta do faturamento. Também: detalhes no ErroApi e o teste com o pino real. Pronto quando: o lote 2 da T-0015 estiver no main e a ligação tiver teste.
