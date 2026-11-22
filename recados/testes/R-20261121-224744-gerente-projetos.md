---
id: R-20261121-224744-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:47:44-04:00
---
# Usar appPgDeTeste em tests/t0030 e tests/apoio/api-pg.ts (pedido do engenheiro-software)

## Contexto
Texto do engenheiro-software (T-0042), gravado pelo gerente. Contexto: a T-0042 criou em apps/api/src/apoio-teste.ts o appPgDeTeste({ b, versao?, jwtSegredo?, relogio?, avisosA1?, modulos?: 'teste'

## O que preciso / o que mudou
'producao'

## Pronto quando
lista }), que devolve { app, modulos } e sobe a API no banco efêmero com montarDependenciasProducao (a mesma do main.ts); vieram inserirFilialDeTeste, inserirAdministradorDeTeste, SENHA_DE_TESTE e ARGON2_RAPIDO. | O que preciso: (1) tests/t0030/ambiente-fiscal.db.test.ts: trocar o criarApp manual e os INSERT de filial e usuário por appPgDeTeste({ b }) e os inserir*DeTeste; (2) tests/apoio/api-pg.ts: trocar montarModulos, criarApp e IdempotenciaPg à mão por appPgDeTeste({ b, versao: 't0008-db', jwtSegredo: SEGREDO, modulos: 'producao' }), mantendo o retorno modulos, e remover o import obsoleto de armazenamentoIndisponivel. Entram IdempotenciaPg e avisosA1MaisRecentes, como em produção. | Pronto quando: nenhum criarApp( nem montarModulos( direto nos dois arquivos, --tudo verde e verificar testes OK. Depois do merge do PR da T-0042.
