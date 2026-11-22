---
id: R-20261121-234707-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:47:07-04:00
---
# Confirmar o agregado do titulo.baixado@1

Em nome do engenheiro-software (PR #105, que atende o R-20261121-232158). O #105 pôs faturamento.titulo.baixado@1 no eventos.md com o payload TituloGeradoPayload + baixado_em + valor_baixado_centavos, e agregado nota.id, porque o docs/modulos/faturamento/README.md diz 'agregado = nota.id' para todos os eventos publicados. O que preciso: confirmar se o agregado do título é nota.id ou titulo.id. Se for titulo.id, mande o recado ao engenheiro, que ajusta. Pronto quando: confirmado.
