---
id: R-20261128-071921-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T07:19:21-04:00
---
# Alexandre 136 B, 137 A, 138 A, 139 A (sincronizador fora da AM2808; e2e no liberar; regras dos Planos)

Textos literais do Alexandre, ~07h18 de 28/11/2026 (Manaus), repassados pelo Gerente Sênior:
"136 · Macuxi ERP, sincronizador da "Thathyany simulada" (~47 mil registros na AM2808, em produção, que também descem ao FDV): B (não na AM2808; usar uma empresa de teste separada, sem ligação com o FDV dos vendedores)"
"137 · Macuxi ERP, testes de ponta a ponta das telas em toda versão: A (os 6 testes de tela passam a rodar sempre no liberar, com +12 a 20 min por versão; vem um PR de governança para o seu "autorizo")"
"138 · Macuxi ERP, Planos: A (usuário bloqueado por senha continua ocupando licença; só o desativado libera)"
"139 · Macuxi ERP, Planos: A (período de teste vencido sem pagamento trava só os cadastros novos; nota, pedido e consulta seguem funcionando)"
Efeitos:
- 136 B: o sincronizador NÃO roda na AM2808. Nenhum lote foi enviado; a sessão confirmou às 06h37 que a última chamada dela ao ERP foi em 27/11 17h01. Ele só aponta para uma empresa de teste separada, sem ligação com o FDV, depois que ela existir.
- 137 A: o gerente abre o PR de governança (Agente: alexandre) com os 6 e2e no producao-liberar.
- 138 A e 139 A: saem da lista de premissas provisórias da ADR 0022 e viram regra.
- Os preços dos planos A e D e o tipo de licença por perfil continuam pendentes com o Alexandre.
