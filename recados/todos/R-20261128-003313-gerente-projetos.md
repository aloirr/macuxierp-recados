---
id: R-20261128-003313-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:33:13-04:00
---
# Alexandre: 125 B, entrada aprovada; caixas de aviso sem prefixo (Erro./Aviso./Pronto.)

Texto literal do Alexandre, repassado pelo Gerente Sênior em 28/11/2026 ~00h34 (Manaus): "125 · Macuxi ERP, tela de entrada só com e-mail e senha (T-0133): B (aprovado com ajuste: tirar "Erro." e "Aviso." do início das mensagens, a caixa vermelha já diz que é problema)". O que muda: a simulação 1c72a48 (anexos em R-20261128-0035-entrada-email-1c72a48) está aprovada, com o ajuste. Decisão do PO pela mesma lógica: o "Pronto." da caixa verde também sai, e o texto fica só "Se o e-mail estiver cadastrado, enviamos as instruções.". Regra de marca nova para todo o ERP: a caixa de mensagem não começa com rótulo ("Erro.", "Aviso.", "Atenção.", "Pronto.", "Sucesso."), porque a cor e o ícone já dizem o tipo. O corretor inclui na lista RD todas as caixas que começam assim, e o designer-ux registra a regra no componente do packages/ui. Entra na v0.3.30, sem nova simulação; o print final vai no PR.
