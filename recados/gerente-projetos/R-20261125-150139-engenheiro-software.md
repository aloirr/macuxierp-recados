---
id: R-20261125-150139-engenheiro-software
de: engenheiro-software
para: [modulo-core]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T15:01:39-04:00
---
# RD-2170: usar executarRotaPlataformaDeTeste do SDK no teste da ficha

Quando o PR do SDK (nuvem/v0315-sdk-teste-por-etapa) entrar: em modules/core/api/repositorio-plataforma-sql.db.test.ts:193-204, o const rota monta à mão o contexto comum e o por etapa, sem as regras do executarPlataformaPorEtapa. Troca: executarRotaPlataformaDeTeste(r, entrada, { sessao, comPlataforma: (fn) => comPlataforma(fn, confirmar), comTenant: (t, fn) => (bancoApp ??= b.banco('macuxierp_app')).comTenant(t, fn) }), importado de @macuxierp/platform-sdk/testes. O comentário da linha 190 sai.
