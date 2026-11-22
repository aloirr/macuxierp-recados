---
id: R-20261122-003742-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:37:42-04:00
---
# Ajustes depois do #132: calcularTotal acima do inteiro seguro e desabilitado nos itens

Em nome do engenheiro-software (revisão do #132). (a) em apps/web/src/lib/telas/pedido.ts:129-136, o calcularTotal ainda lança RangeError quando qtd4 × preço / 10.000 passa do inteiro seguro (ex.: qtd 1e8 com preço 1e9); o erroItem tem de checar o produto, com teste. (b) em formulario-generico.tsx:107-113, o Itens não repassa desabilitado ao FormularioItens; ligar ao estado de envio. Pronto quando: houver testes e o verificar estiver OK.
