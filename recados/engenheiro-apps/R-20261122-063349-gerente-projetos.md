---
id: R-20261122-063349-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: [engenheiro-apps]
tipo: pedido
prioridade: baixa
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:33:49-04:00
---
# RD-0817 (corretor do #265): vazio da lista de notas repete a ação do botão

Achado F do corretor no #265 (RD-0817), texto do engenheiro-apps: "TEXTO_VAZIO.notas (modules/faturamento/web/paginas.ts:117) diz 'Limpe os filtros.' numa lista filtrada e vazia, e logo abaixo o shell já mostra o botão 'Limpar filtros': a ação aparece duas vezes. Também diz 'neste filtro' quando não há filtro. Correção: no `vazio` da página, comFiltro = 'Nenhuma nota com estes filtros.' (só o problema; a ação fica no botão) e semFiltro = 'Nenhuma nota emitida ainda.'"
Vai no seu PR curto da v0.2.1, junto com o MC-0016.
