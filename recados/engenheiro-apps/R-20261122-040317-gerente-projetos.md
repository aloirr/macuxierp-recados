---
id: R-20261122-040317-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [modulo-pedido]
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:03:17-04:00
---
# Shell do pedido: documento do cliente por perfil (LGPD), total antes de Lançar e erros por campo

Pedido do modulo-pedido (#225 no main, f67be1e), gravado pelo gerente.
1. 🟡 LGPD do engenheiro-software: o seletor de clientes (apps/web/src/lib/descritor/fontes.ts:23) mostra o documento a qualquer perfil, inclusive ao vendedor, e sem máscara. Use rotuloDoCliente(c, perfil) de @macuxierp/pedido/web.
2. Mostre totalDoFormulario(itens).texto antes de "Lançar pedido". O desenho é combinado com o designer-ux.
3. Repasse os erros itens.N.campo ao FormularioItens, que vai mostrar um erro por campo (pedido ao designer-ux no R-20261122-035012).
Vai no PR seguinte do shell, junto com os 🟡 do R-20261122-035015.
