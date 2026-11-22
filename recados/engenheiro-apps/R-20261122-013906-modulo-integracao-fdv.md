---
id: R-20261122-013906-modulo-integracao-fdv
de: modulo-integracao-fdv
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:39:06-04:00
---
# Tela Integração FDV (monitor, credencial e ações) no shell do BKO

## Contexto
Contexto: o módulo entrega em '@macuxierp/integracao-fdv/web' (modules/integracao-fdv/web) a página como dados e funções puras: PAGINAS_INTEGRACAO_FDV (rota /integracao-fdv/integracao-fdv, e /integracao-fdv/integracao-fdv/lotes oculta no menu), paginaLotes (descritor de lista do SDK, CSV, filtros entidade e estado), criarClienteIntegracaoFdv (cliente tipado de /v1/integracao-fdv), linhasDoMonitor, resumoDoSinal, resumoDaCredencial, linhasDeErros, colunasDeErros (CSV), linhasDeConflitos, acoesDaTela(perfil), entidadesParaRetomar, textoDeConfirmacaoCargaCompleta, validarFormularioCredencial e validarFormularioConfiguracao. Textos já em português sem jargão e horário de Manaus.

## O que preciso / o que mudou
O que preciso: componente do shell que desenhe: faixa do sinal (resumoDoSinal), cartão da credencial (só o prefixo; campo de chave de tipo senha, limpo depois de salvar, nunca preenchido de volta), tabela por entidade (linhasDoMonitor, com botões 'Tentar de novo' e 'Carga completa' com confirmação), seção de erros por linha com 'Exportar CSV' (colunasDeErros) e link para os envios (lotes), seção de conflitos de chave, botão 'Testar conexão' (POST 202, depois recarregar o monitor) e a configuração (entidades habilitadas e limite 1 a 5.000). Botões só para quem tem acoesDaTela(perfil); a proteção real é a da API. Use TabelaDensa e FaixaPendencias de packages/ui. A chave nunca vai a log, URL nem estado persistido do cliente.

## Pronto quando
Pronto quando: a tela abre em /integracao-fdv/integracao-fdv para administrador (com botões) e para gerente e leitura (sem botões), com teste de render. Esta mudança de layout pede a validação do design-de-marca.
