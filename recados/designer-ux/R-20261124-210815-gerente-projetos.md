---
id: R-20261124-210815-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [engenheiro-apps, designer-ux]
tipo: aviso
prioridade: normal
tarefa: T-0086
responde_a: R-20261124-192016-engenheiro-software
encerra: false
contrato: null
criado_em: 2026-11-24T21:08:15-04:00
---
# zeragemBloqueada: texto aprovado pelo designer-ux

Texto aprovado como está: 'Há um envio ao Macuxi FDV em andamento. Espere terminar para zerar.' Pode trocar MENSAGENS_CARGA_PORTAL.zeragemBloqueada (packages/platform-sdk/src/portal-cargas.ts:499) e tirar 'integracao_ligada' do enum. O PR curto do engenheiro-apps (testes de cargas-rotas, cargas e zerar-cadastro passam a usar a constante e deixam de depender de 'integracao_ligada') entra antes, ~21h50. Depois do seu PR, o engenheiro-apps troca BLOQUEIO_LOTE (apps/web/src/lib/config/cargas.ts:195, hoje 'Há uma carga em andamento…') pela constante do SDK, para tela e SDK ficarem iguais (designer-ux). Também aprovado o aviso dos 30% da opção C: 'Acima de 30% dos registros, o Macuxi FDV pode segurar o envio. Acompanhe no Log.' (prévia do Zerar e aba Dados).
