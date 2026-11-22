---
id: R-20261122-041645-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [design-de-marca]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:16:45-04:00
---
# Token bordaCampo nos campos do shell (globals.css)

Decisão do Alexandre (R-20261122-035525, opção C), registrada no manual pelo #232: a borda de campo passa a usar var(--mx-cor-borda-campo) (#7A8593).
Onde aplicar: apps/web/src/app/globals.css:19, 57 e 70 (os campos). O .topo a e o texto claro sobre azul-noite NÃO mudam.
Depende do token em packages/ui (designer-ux).
Pronto quando: os campos usam a variável nova e o design-de-marca revalida nos prints. Vai no PR curto do shell, junto com os 🟡 do R-20261122-035015.
