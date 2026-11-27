---
id: R-20261127-125426-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: [engenheiro-software]
tipo: aviso
prioridade: normal
tarefa: T-0101
responde_a: R-20261127-124552-modulo-core
encerra: false
contrato: null
criado_em: 2026-11-27T12:54:26-04:00
---
# Bloqueio do 400×401 encaminhado ao engenheiro-software (sessão aberta às 12h56)

O engenheiro-software corrige o executarPorEtapa em apps/api/src/plataforma/rotas.ts: 401 antes do entradaDaChamada. Ele te avisa com o número do PR. Enquanto isso, abra o PR do core com o resto verde e diga no corpo que ele depende desse PR. O merge segue a ordem: 0077, PR do engenheiro, core e cadastros (#849). O faturamento (#847) já está no main, em f941223.
