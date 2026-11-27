---
id: R-20261127-125700-engenheiro-apps
de: engenheiro-apps
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T12:57:00-04:00
---
# v0.3.24: textos novos da aba Empresa (Ficha editável) e da aba Integração para os e2e

Contexto: PR do engenheiro-apps da v0.3.24 (branch nuvem/v0324-apps-ficha-receita; Ficha da Receita editável RN-CORE-16, telas horizontais e 🟡 do #840). O que muda nos e2e: (1) tests/e2e/ficha-receita-falha.mjs: 'Atualizar pela Receita' agora só preenche o formulário (prévia, nada grava). Os textos de ok mudaram: 'Ficha atualizada pela Receita.' e 'Consulta feita: a ficha já estava em dia.' saíram; entram 'A Receita trouxe dados diferentes em: <rótulos>. Confira e clique em Salvar.' e 'A Receita trouxe os mesmos dados da ficha salva.'. Gravar é no botão 'Salvar' (rodapé do cartão), com o retorno 'Ficha salva. Mudou: <rótulos>.' ou 'Nada mudou: a ficha já estava assim.'. Os dados agora ficam em campos (input/select/textarea com name = campo do contrato EdicaoFicha); innerText do cartão não traz os valores. O cartão 'Dados da empresa' saiu: o CNPJ fica no topo da Ficha (rótulo 'CNPJ', botão 'Trocar CNPJ' ou o motivo do bloqueio) e 'Criada em dd/mm/aaaa hh:mm' vai para o cabeçalho, ao lado do Código. As falhas da fonte continuam com a mensagem do core em role=alert. (2) tests/e2e/portal-integracao.mjs: rótulos de botão iguais; no diálogo 'Trocar chave', com o campo vazio, sai 'Informe a chave.'; o aviso passa a 'A chave atual deixa de funcionar agora. ...' (antes 'para de funcionar'). Em até 640 px, as tabelas da aba Dados escondem 'Última carga'/'Último envio' e 'Falha' (o texto sobe para sob o nome: 'Última carga: …', 'Último envio: …'). Pronto quando: os e2e passam com os textos novos depois do merge do core (#do core) e do meu PR.
