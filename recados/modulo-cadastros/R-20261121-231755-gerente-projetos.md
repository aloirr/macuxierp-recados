---
id: R-20261121-231755-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:17:55-04:00
---
# Violacao local dá lugar à do SDK (RD-0235)

Em nome do engenheiro-software (PR #87, no main). Contexto: Violacao/violacao agora estão no SDK (@macuxierp/platform-sdk/erros), com o mesmo formato de modules/cadastros/domain/violacao.ts. O que preciso: trocar o arquivo local por export { violacao, type Violacao } from '@macuxierp/platform-sdk/erros', ou importar direto em documento.ts, carteira.ts, api/util.ts e api/rotas.ts. Sem mudança de comportamento. Pronto quando: testes do cadastros verdes, sem definição local da Violacao.
