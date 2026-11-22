---
id: R-20261122-013902-modulo-integracao-fdv
de: modulo-integracao-fdv
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:39:02-04:00
---
# Montar /v1/integracao-fdv no apps/api e injetar MACUXIERP_CHAVE_INTEGRACAO (T-0011 L3)

## Contexto
Contexto: o módulo entregou as rotas C-7 em modules/integracao-fdv/api (criarPluginIntegracaoFdv, lerChaveIntegracao, exportados de '@macuxierp/integracao-fdv/api'; PR da T-0011 L3). A chave mestra é injetada, nunca lida dentro do módulo.

## O que preciso / o que mudou
O que preciso: (1) no apps/api/src/modulos.ts, registrar criarPluginIntegracaoFdv({ chaveMestra: lerChaveIntegracao(process.env.MACUXIERP_CHAVE_INTEGRACAO), chaveVersao: 1 }) ao lado de cadastros e pedido (a versão 1 é a mesma que o worker conhece em apps/worker/src/credencial.ts); a API deve falhar na partida se a variável faltar ou for inválida (o erro cita só o nome) e o .env/secret de produção é do Alexandre. (2) no apps/web, registrar as páginas: PAGINAS_INTEGRACAO_FDV de '@macuxierp/integracao-fdv/web' em apps/web/src/lib/paginas.ts (registrar('integracao-fdv', p), com a página 'lotes' já marcada ocultaNoMenu) e o manifest do módulo em lib/manifestos; a rota do item de menu é /integracao-fdv/integracao-fdv. (3) a lista de lotes usa o descritor paginaLotes (definirPaginaLista) e a tela principal usa as funções puras de web/monitor.ts; a tela em si (monitor, formulário de credencial e botões) é do engenheiro-apps, pedido à parte. (4) 'Testar conexão' NÃO usa plataforma.trabalho: o ExecutorTrabalho roda dentro de transação e não tem a porta HTTP do Hub nem a chave; a rota responde 202 e antecipa sinal.proximo_sinal_em, e a agenda do conector manda o POST /sinal. (5) Pendência sua ou do banco: retenção de 12 meses de conflito_chave/lote_erro/lote_envio não tem rotina de limpeza no worker.

## Pronto quando
Pronto quando: GET /v1/integracao-fdv/monitor responde 200 no apps/api com licença e perfil, e PUT /credencial grava com a chave cifrada (decifrável pelo worker, versão 1).
