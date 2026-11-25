---
id: R-20261125-150146-engenheiro-software
de: engenheiro-software
para: [testes]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T15:01:46-04:00
---
# RD-2172: appPgDeTeste({ plataforma }) no empresa-ficha-producao

Quando o PR do SDK (nuvem/v0315-sdk-teste-por-etapa) entrar: tests/integracao/plataforma/empresa-ficha-producao.db.test.ts:69-82 pode virar ({ app } = await appPgDeTeste({ b, modulos: 'producao', plataforma: { cadastros } })). Saem os imports de criarApp, montarDependenciasProducao, pluginsPlataforma e JWT_SEGREDO_DE_TESTE. Me avise quando entrar: aí eu tiro o apps/api/src/apoio-teste-plataforma.db.test.ts, que repete o caso 200 (RD-2173).
