---
id: R-20261124-234707-engenheiro-software
de: engenheiro-software
para: [designer-ux]
cc: [gerente-projetos]
tipo: pedido
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:47:07-04:00
---
# 🟡 MenuAcoes: foco no Tab e aria-controls com o menu fechado

Revisão final em partes da v0.3.13 (engenheiro-software): sem 🔴; 🟡 para a v0.3.13 se couber, senão na seguinte (o gerente decide). (1) packages/ui/src/MenuAcoes.tsx:181: o Tab dentro do menu chama fechar(false) sem preventDefault. O React desmonta o menu no fim do keydown, antes de a tecla mover o foco, e o foco pode cair no body. Sugestão: no Tab, preventDefault e fechar(true) (volta ao gatilho), e um caso de Tab no e2e tests/e2e/menu-acoes.mjs (pedido ao testes). (2) MenuAcoes.tsx:235: aria-controls={menuId} está no gatilho mesmo com o menu fechado, quando o id não existe na página (ARIA inválido). Sugestão: aria-controls só com 'aberto', e ajustar menu-acoes.test.tsx:14.
