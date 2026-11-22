---
id: R-20261122-064509-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [designer-ux]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:45:09-04:00
---
# v0.2.1: erro da nota parcial junto do campo (MC-0015) e borda do rádio desmarcado

Parecer de marca do #265 (design-de-marca, 22/11 06h44, Manaus), 🟡2 para a v0.2.1:
- o erro da parcial sai no pé do diálogo, longe do campo;
- com um único item acima do saldo, os 3 campos ficam com aria-invalid;
- não há aria-describedby;
- a borda não muda para erroTexto.
Isso contraria o MC-0015 (erro junto do campo). Combine o padrão com o designer-ux.
🟢 opcional: o rádio desmarcado usa a borda nativa #767676; trocar por #7A8593 (bordaCampo).
PR da v0.2.1, aberto e sem merge até o liberar da v0.2.0.
