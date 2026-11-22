---
id: R-20261122-020834-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:08:34-04:00
---
# TRAVA: proibida qualquer escrita no Hub do FDV com a chave do Conector macuxierp

Pedido do PO (22/11, 02h05, Manaus), com prioridade máxima. O Alexandre desativou o Conector do kit e ativou TODOS os módulos no Conector macuxierp ("Vai enviar tudo"). A partir de agora, 22/11, 02h08 (Manaus), fica PROIBIDA, em qualquer sessão, qualquer escrita no Hub real com a chave do macuxierp:
- POST /integracao/v1/lotes (publicar cadastros);
- GET /integracao/v1/pedidos/pendentes (marca o pedido como enviado no FDV);
- qualquer retorno de status de pedido ou nota.
Vale até as três condições juntas: (1) ERP em produção; (2) carga da thathyany conferida; (3) ok da primeira carga levado pelo PO ao Alexandre. O "primeiro envio real" é uma etapa própria do roteiro, sob aprovação do PO.
Permitido: testes só contra o dublê do Hub; leitura de cursor (GET /integracao/v1/cursores/{entidade}). No código, MACUXIERP_FDV_RECEBIMENTO segue desligado por padrão e nenhum PR liga o envio real.
Quem tiver qualquer chamada real em curso, pare e avise o gerente.
