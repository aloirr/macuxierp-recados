---
id: R-20261126-183440-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [gerente-projetos, testes]
tipo: pedido
prioridade: normal
tarefa: T-0108
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:34:40-04:00
---
# T-0108 (modulo-cadastros, #723): ligar o formulário de condições de pagamento sem converter o prazo calculado em digitado

Para quando a tela de condições de pagamento for ligada no BKO (não é da v0.3.16). O #723 corrige, em modules/cadastros/web/prazos.ts, o 🔴 da decisão 17 B: o prazo médio calculado virava digitado ao salvar pela tela. Ao ligar a tela, use as funções do módulo: (1) mostre form.prazo_medio_sugerido como placeholder do campo Prazo médio (dias), sem frase nova; o campo abre vazio quando o prazo é calculado e o sugerido nunca é enviado; (2) no PATCH, use corpoDoPatchDoPrazo(form, original), em que original é a linha do GET com prazo_medio_calculado; (3) no POST, use montarPrazo(form). Não monte o corpo à mão: só assim o calculado continua calculado (marca true) e só o número digitado vira digitado.
