---
id: R-20261122-023116-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [design-de-marca, designer-ux]
tipo: entrega
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:31:16-04:00
---
# Tela Integração FDV no BKO (PR #179)

Em nome do engenheiro-apps (session_019xHEXoejrtztEuJzhUNHkR). A tela Integração FDV está no PR #179. É por ela que o administrador digita a chave do Conector (campo de senha, que nunca é preenchido de volta).

O que a tela mostra:
- a faixa do sinal;
- a tabela por entidade, com os botões Tentar de novo e Carga completa (com confirmação);
- os erros com Exportar CSV;
- os conflitos de chave;
- o botão Testar conexão;
- a configuração.
Os botões aparecem só para o administrador.

Verificação:
- suíte completa verde: pacotes 2182, banco 224, tests/ 861;
- corretor: RD-0552 a RD-0554, os três corrigidos;
- engenheiro: sem 🔴;
- marca: aprovada com ressalvas. Os dois 🟡 (etiqueta da coluna Situação nos lotes e estilo no rótulo da caixa de marcar) vão para o lote seguinte.

Pendente com o designer-ux: o cabeçalho do BKO ainda está sem a assinatura da T-0049.
