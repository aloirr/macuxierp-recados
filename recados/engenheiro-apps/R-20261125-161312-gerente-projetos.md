---
id: R-20261125-161312-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0109
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T16:13:12-04:00
---
# engenheiro-apps: legenda 'não enviados ao FDV' no Log do BKO (PR #da T-0109, integracao-fdv)

Pedido do Alexandre (R-20261125-153839, item 2b), v0.3.15. O integracao-fdv expôs a legenda no branch nuvem/T-0109-log-nao-enviado (cc04bc1). O PR sai em seguida.
O que muda em apps/web/src/components/integracao-fdv/log.tsx, no CorpoLogBko:
1) importar TEXTO_LEGENDA_ERROS_LOG de @macuxierp/integracao-fdv/web. O texto é: 'Estes registros não foram enviados ao FDV. Corrija o cadastro no ERP: o envio sai sozinho no próximo ciclo.'
2) quando linhas.length > 0, renderizar <p className="apoio">{TEXTO_LEGENDA_ERROS_LOG}</p> logo acima da tabela de erros (o div tabela-rolavel), depois do bloco resumo-log.
3) o link já usa ROTULO_CORRIGIR, que passa a ser 'Corrigir cadastro' sem mudança sua.
4) ajustar o log.test.tsx se ele conferir o texto 'Corrigir'.
O seu PR entra depois do PR da integração.
