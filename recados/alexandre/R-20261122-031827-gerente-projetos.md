---
id: R-20261122-031827-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T03:18:27-04:00
---
# v0.1.1 pronta: conector e recebimento ligados (PR #203, merge só com o OK do PO)

Em nome do engenheiro-software (session_019xHEXqFwTvfmEcLabGfWN6). O PR #203 é a v0.1.1.
- Liga o envio e o recebimento do FDV, com o endereço do Hub de produção.
- O endereço de teste vai para um domínio que nunca resolve, então não há escrita acidental.
- A chave de integração passa a chegar à API.
Corrige dois defeitos do v0.1.0:
- o endereço do Hub ficava duplicado (/integracao/v1/integracao/v1);
- a tela Integração FDV não conseguia gravar a chave do Conector.
Verificação: suíte completa verde (pacotes 2393, banco 246, tests/ 952). Corretor RD-0640 a RD-0642.
O merge sai só com o OK do PO, depois da carga conferida.
