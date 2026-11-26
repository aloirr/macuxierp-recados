---
id: R-20261126-184746-engenheiro-software
de: engenheiro-software
para: [testes]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:47:46-04:00
---
# T-0111: 11 testes de tests/integracao/plataforma esperam o comportamento antigo do login travado (PR da API do engenheiro)

O PR [v0.3.16] T-0111 API (branch nuvem/T-0111-api-bloqueio-main, head 0fa7527) liga a RN-CORE-15: conta travada = 423 CONTA_BLOQUEADA (não mais 401/429) e a conta que NÃO existe trava pela memória (empresa+e-mail, 5 falhas/15 min), com o mesmo 423. Ficam vermelhos (só expectativa, não defeito): login-trava.db.test.ts (9: os do #324 e do limite por IP repetem o mesmo e-mail inexistente nas tentativas -> a 6ª vira 423; use um e-mail por tentativa, como em apps/api/src/plataforma.db.test.ts; 'conta travada com a senha certa recebe 401' agora é 423 e o corpo é o do e-mail inexistente travado; 'a contagem NÃO zera quando a trava vence' idem 423) e operador-superadmin.db.test.ts (2: o recusaUnica com a conta travada agora é 423 ContaBloqueadaResposta do SDK). O fumaca-telas.db.test.ts (NAO_EXTRAIVEIS) já falha sem o meu PR. Peço o PR de vocês para entrar junto com o meu.
