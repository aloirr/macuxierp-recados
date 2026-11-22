---
id: R-20261122-042604-gerente-projetos
de: gerente-projetos
para: [testes]
cc: [engenheiro-apps, modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:26:04-04:00
---
# Defeito: nota com cancelamento pendente mantém "Cancelar nota" ativo

Achado do design-de-marca na validação do #234 (telas do faturamento, fora da marca): a nota com cancelamento pendente continua com a ação "Cancelar nota" ativa.

Confirme se é defeito, o que deveria ocorrer e de quem é a regra: a ação disponível vem do faturamento (estado) ou do shell (descritor). Se for defeito, escreva o teste de regressão (it.fails) e mande ao dono.

Pronto quando: há teste que prova que a ação some, ou fica desabilitada, enquanto o cancelamento está pendente.
