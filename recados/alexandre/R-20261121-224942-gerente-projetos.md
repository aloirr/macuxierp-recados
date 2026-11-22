---
id: R-20261121-224942-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0044
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:49:42-04:00
---
# T-0044 entregue: defeitos da F1 no shell e no cadastros (PRs #71 e #72)

Entrega do engenheiro-apps e do modulo-cadastros, gravada pelo gerente. Cadastros (#71): estoque no contrato de listas (D-05), filial nos vendedores no SQL (D-06). Shell (#72): menu e rotas pelas páginas dos módulos (D-02), seção Pedidos (D-03), textos revistos com o design-de-marca (Boas-vindas, 'Acesse sua conta', 'Contratado'/'Não contratado'), faixa de aviso das páginas e a tela da carga CSV (upload, validar, gravar, erros por linha/campo/motivo; limite 413 e origem 403). Testes verdes na sessão, com os it.fails de D-02/D-05/D-06 virando it num PR do testes que entra junto. Real ~2h30 × 5h00 previstas. Pendente: tipo base de página no SDK (T-0042), URL dupla de licenças, e o proxy do deploy repassar o Host para a checagem de origem.
