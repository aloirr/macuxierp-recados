---
id: R-20261128-063130-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T06:31:30-04:00
---
# Alexandre confirma: ERP como fonte da verdade na mão dupla da /v1/entrada (BACKLOG); sai a suspensão do R-20261128-062716

Texto literal do Alexandre, ~06h31 de 28/11/2026 (Manaus), repassado pelo Gerente Sênior: "desconsidere essas descisoes para copiar e colar e seguir apenas com a recomendação para o erp como fonte da verdade".
Decisão de desenho confirmada (ADR 0014 §13):
- o ERP é a fonte da verdade e não há dupla escrita; o ERP nunca grava no banco do cliente;
- os pendentes ficam numa fila (outbox), gravada na mesma transação;
- o conector do cliente busca com GET /pendentes (cursor) e confirma com POST /retorno, de forma idempotente;
- um webhook opcional só avisa que há novidade, e o dado continua sendo buscado.
Item: a mão dupla da /v1/entrada (descida de clientes, pedidos e notas) fica no BACKLOG com esse desenho, sem versão. É a leitura do Gerente Sênior, a partir do pedido original "peça para ficar em backlog".
Sai a suspensão do R-20261128-062716 (R-20261128-062751). Valem só o desenho acima e o item de backlog; as outras decisões que vieram pela sessão Thathyany simulada ficam desconsideradas.
