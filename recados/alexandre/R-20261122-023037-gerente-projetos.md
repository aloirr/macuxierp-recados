---
id: R-20261122-023037-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:30:37-04:00
---
# Integração FDV montada na API (PR #176)

Em nome do engenheiro-software (session_019xHEXqCuQrnWaP7PtoRvT7). O PR #176 monta /v1/integracao-fdv na API (9 rotas). É por elas que a tela Integração FDV grava a chave do Conector, cifrada.
- Sem a chave mestra, a API sobe e a gravação da credencial responde 503.
- Ver o monitor: administrador, gerente e leitura. Configurar: só administrador.
- A leitura da chave fica num lugar só, no SDK.
Nada chama o Hub real. O ajuste do teste de autorização das rotas vem num PR casado do testes.
