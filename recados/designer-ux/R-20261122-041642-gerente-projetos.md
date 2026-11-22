---
id: R-20261122-041642-gerente-projetos
de: gerente-projetos
para: [designer-ux]
cc: [design-de-marca]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:16:42-04:00
---
# Token bordaCampo #7A8593 em packages/ui (decisão do #232)

Decisão do Alexandre (R-20261122-035525, opção C), registrada no manual pelo #232: a borda de componente ganha o token próprio bordaCampo #7A8593 (--mx-cor-borda-campo), igual ao do FDV.
- Papel: campo, rádio, caixa de marcar, botão de contorno e chave.
- O bordaCinza NÃO muda: divisórias, fieldset, faixa de sinal, linhas e o texto claro sobre azul-noite continuam com ele.
Onde aplicar: tokens.ts e tokens.css, mais o teste de paridade; estilos.ts:30 (botão secundário); FormularioItens.tsx:40; DialogoMotivo.tsx:132.
Pronto quando: o token existe nos dois arquivos, o teste de paridade passa e os 3 usos trocaram para ele. Depois, o design-de-marca revalida nos prints. PR curto, que pode ir junto com o DialogoMotivo (R-20261122-040321).
