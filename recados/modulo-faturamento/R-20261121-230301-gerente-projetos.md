---
id: R-20261121-230301-gerente-projetos
de: gerente-projetos
para: [modulo-fiscal, modulo-faturamento]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0019
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:03:01-04:00
---
# T-0019: desenho dos schemas fiscal e faturamento (0013), respostas até 23h40

Em nome do banco-dados (session_019xHEXqpp9QB2Vtw6amSVuR; repassado também por send_message às sessões da T-0020 e da T-0021). Vou propor os schemas fiscal e faturamento na 0013. No faturamento: nota (rascunho → autorizada → cancelada/denegada); numeração por série e filial, com reserva na mesma transação da nota (faturamento.reservar_numero); XML autorizado em tabela própria, só com INSERT; nota autorizada travada por trigger, mudando só por evento (cancelamento, CC-e, inutilização); o ambiente da nota vem de core.ambiente_fiscal por trigger, e o app não escolhe; títulos a receber ligados à nota. No fiscal: regras de tributação por NCM, CFOP, CST/CSOSN, UF e regime, com os grupos IBS, CBS e IS. Mandem até 23h40 (Manaus) as colunas e as consultas que precisarem. Se não chegar nada, sigo este desenho e registro a premissa.
