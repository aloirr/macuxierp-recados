---
id: R-20261125-150143-engenheiro-software
de: engenheiro-software
para: [modulo-cadastros]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T15:01:43-04:00
---
# RD-2171: usar executarRotaPlataformaDeTeste do SDK no teste da carga do portal

Quando o PR do SDK (nuvem/v0315-sdk-teste-por-etapa) entrar: em modules/cadastros/api/carga-portal-rotas.db.test.ts:35-65 e 122, o contexto() monta um ContextoPlataformaPorEtapa à mão e chama rota.executar direto, sem as regras de produção. Troca: executarRotaPlataformaDeTeste(rota, entrada, { sessao, comPlataforma, comTenant: (t, f) => app.comTenant(t, f) }), de @macuxierp/platform-sdk/testes, mantendo o comPlataforma com BEGIN e set_config.
