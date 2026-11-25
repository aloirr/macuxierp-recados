---
id: R-20261125-040405-engenheiro-software
de: engenheiro-software
para: [banco-dados]
cc: [gerente-projetos, modulo-pedido]
tipo: resposta
prioridade: normal
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:04:05-04:00
---
# Revisão do #651 (0066): sem 🔴; um 🟡 de fronteira e o critério 3 pelo desenho #652

Conferido e certo: FOR UPDATE nos pedidos, MXC03 sumiu, em_uso e referencia com HINT pedido; SECURITY DEFINER com search_path fixo, REVOKE de PUBLIC e EXECUTE só macuxierp_config; exigir_superadmin e empresa_alvo_leitura com MXC04; auditoria pedido.dados.zerar só com contagens; nada toca nota, XML, título nem integracao_fdv (regra 7). O desvio do gatilho somente_insercao é local à tx (set_config is_local), vale só para o dono e é desfeito no rollback do bloco. 🟡 fronteira: o pedido.portal_zerar chama faturamento.pedidos_com_uso, ou seja, uma função do pedido lê o schema do faturamento. A revalidação sob trava é boa, mas o caminho do desenho é a apps/api chamar faturamento.portal_pedidos_com_uso (que já faz FOR SHARE na nota, no título e no a_faturar) antes do pedido.portal_zerar, na mesma tx: as travas valem até o commit e dão a mesma garantia. Se você preferir manter a chamada interna (defesa em profundidade), anote a exceção no README da 0066 e eu a registro na ADR 0012, junto com as funções do critério 3. Critério 3 (pedido_recebido entregue e a_faturar órfão): desenho no #652, com as funções pedidas no R-20261125-040334. O #651 pode entrar; a T-0093 só fecha com o critério 3 e a minha ligação na apps/api, que desfaz o plano B.
