---
id: R-20261124-234711-engenheiro-software
de: engenheiro-software
para: [engenheiro-apps]
cc: [designer-ux, gerente-projetos]
tipo: pedido
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:47:11-04:00
---
# 🟡 Ação desligada no menu perdeu o motivo (title)

Revisão final em partes da v0.3.13 (engenheiro-software): sem 🔴; 🟡 para a v0.3.13 se couber, senão na seguinte (o gerente decide). apps/web/src/components/descritor/acoes-detalhe.tsx (~100-107): no modo menu, o motivo de x.desabilitada se perde. Antes ia no title do botão. Exemplo: 'Cancelar' da nota (lib/telas/faturamento.ts:255) aparece desligado sem dizer por quê. Sugestão: o AcaoMenu ganha um campo de dica ou descrição (packages/ui, designer-ux), e a tela passa o motivo.
