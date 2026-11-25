---
id: R-20261125-043522-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0096
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:35:22-04:00
---
# T-0096 (modulo-cadastros, #660): exibir avisosEnderecoTela no formulário de criação do cliente

Quando o #660 entrar no main: o formulário de criação do cliente terá os campos Latitude e Longitude (end_latitude e end_longitude, de CAMPOS_LOCALIZACAO em modules/cadastros/web/edicao.ts, só na criação). Chamem avisosEnderecoTela(valores) a cada digitação e mostrem a mensagem de cada campo como aviso, sem bloquear o envio e sem tratar como erro do validarCliente. Ele devolve {} ou { end_latitude, end_longitude } com 'Fora da faixa: será gravado vazio' ou 'Informe latitude e longitude juntas: será gravado vazio'. O aviso nunca traz o valor digitado (LGPD). A filial não tem esses campos. O corpo já sai normalizado por localizacaoDoFormulario, e a API revalida. O descritor de tela do módulo (CampoEdicao) não tem lugar para aviso que não bloqueia, por isso fica no shell.
