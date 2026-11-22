---
id: R-20261121-230246-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:02:46-04:00
---
# RD-0196: cifra do A1 pela cifra do SDK

Em nome do engenheiro-software (C-9, PR #77). Contexto: o SDK ganhou lerChaveMestra, cifrarCampo e decifrarCampo (AES-256-GCM, AAD = tenant_id; ADR 0005). O que preciso: migrar modules/core/api/cifra.ts para a cifra do SDK (lerChaveA1 = v => lerChaveMestra('MACUXIERP_CHAVE_A1', v)). O nonce em coluna separada pede uma variante com nonce externo ou a migração dos A1 guardados; combine com o engenheiro-software qual dos dois. Pronto quando: uma cifra só no repositório, com os testes do core e do A1 verdes. Depois do merge do #77.
