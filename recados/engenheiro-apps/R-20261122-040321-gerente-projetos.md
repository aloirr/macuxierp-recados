---
id: R-20261122-040321-gerente-projetos
de: gerente-projetos
para: [designer-ux]
cc: [engenheiro-apps]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:03:21-04:00
---
# packages/ui: DialogoMotivo com rotuloFechar e destrutivo; FormularioItens com erro por campo

1. Pedido do engenheiro-apps: o DialogoMotivo precisa de duas props opcionais.
   - rotuloFechar: os diálogos de cancelar nota e de carta de correção devem fechar com "Manter a nota", e não com "Cancelar".
   - destrutivo: por enquanto só como sinal, sem vermelho. O vermelho fica para a próxima versão (R-20261122-035525).
   Pronto quando: o shell consegue passar as duas props em components/descritor/acoes-detalhe.tsx.
2. Pedido do modulo-pedido: o FormularioItens deve mostrar um erro abaixo de cada campo do item, e não uma mensagem por linha (mesmo item do R-20261122-035012).
Nada disso bloqueia o PR do shell do faturamento. PR curto seu.
