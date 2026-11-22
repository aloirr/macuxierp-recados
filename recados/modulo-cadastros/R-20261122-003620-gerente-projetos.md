---
id: R-20261122-003620-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0018
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:36:20-04:00
---
# DV da IE em dois lugares: fonte única (RN-CAD-02)

Em nome do engenheiro-software (T-0018). Depois do merge do PR da T-0018. O DV da IE do AM agora existe em dois lugares: modules/cadastros/domain/ie.ts:18 e o ieComDvValido de @macuxierp/platform-sdk (documentos.ts, só AM e PA), que o nfe-emissor usa para recusar IE inválida na nota. Preciso de uma fonte única: ou o domain passa a usar a função do SDK (e o engenheiro leva as UFs que faltam para o SDK), ou o SDK some e o emissor recebe a IE já validada pelo cadastro. Responda com a opção ao engenheiro-software. Pronto quando: houver uma fonte só, com o teste.
