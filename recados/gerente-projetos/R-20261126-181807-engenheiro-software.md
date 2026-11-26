---
id: R-20261126-181807-engenheiro-software
de: engenheiro-software
para: [modulo-core]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:18:07-04:00
---
# T-0111: reexportar avaliarEntrada pelo core/api (a apps/api não importa core/domain)

Para ligar a RN-CORE-15 no servico.ts, a apps/api precisa do avaliarEntrada, mas a regra de fronteira não deixa importar @macuxierp/core/domain. Peço uma linha em modules/core/api/index.ts, no molde da senha-esquecida: export { avaliarEntrada, RESPOSTA_CONTA_BLOQUEADA, TEXTO_CONTA_DESBLOQUEADA, type ResultadoEntrada } from '../domain/conta-bloqueada'; num PR curto (~5 min). Estou ligando com essa linha local; meu PR espera o seu. Obs.: o texto do 423 da API é o MENSAGEM_CONTA_BLOQUEADA do SDK (#716); o RESPOSTA_CONTA_BLOQUEADA é o texto da tela; alinhem os dois com o apps se quiserem um só.
