---
id: R-20261122-042601-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: [engenheiro-apps]
tipo: pedido
prioridade: alta
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:26:01-04:00
---
# #213: ambiente da filial no PedidoAFaturarResumo (🔴 da marca, RN-FAT-04) e selo nos títulos

Parecer do design-de-marca sobre o #234 (shell): REPROVADO por um 🔴. A linha "Ambiente:" não aparece nas confirmações de Emitir e Reenviar (RN-FAT-04).

O shell está corrigindo a parte dele. Para o Emitir ficar completo, o PedidoAFaturarResumo precisa do campo `ambiente` da filial emissora. Ele entra no #213.

Também no #213, se for barato:
- 🟡: a lista de títulos a receber sem o selo de homologação (colunaAmbiente em colunasTitulos);
- 🟢 (sugestão): status de pedidos a faturar com selo.

Pronto quando: a API de pedidos a faturar devolve o ambiente, e o shell mostra "Ambiente: Homologação (sem valor fiscal)" no Emitir.
