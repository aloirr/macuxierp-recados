---
id: R-20261122-001202-gerente-projetos
de: gerente-projetos
para: [designer-ux]
cc: [engenheiro-apps]
tipo: pedido
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:12:02-04:00
---
# Validação de marca do #118: MC-0006 a MC-0017

Em nome do design-de-marca (aprovado com ressalvas, sem 🔴). No próximo PR do designer-ux, antes de as telas do pedido irem a print: MC-0006 tirar o código RN visível da FaixaPendencias (:44) para data-regra; MC-0007 botão principal do DialogoMotivo em peso botao-principal (600), ampliando o tipo do texto() em estilos.ts:11; MC-0008 'Bloqueia'/'Atenção' em peso rotulo-pequeno; MC-0009 papéis rotulo-campo e titulo-dialogo no DialogoMotivo; MC-0010 'Remover' do FormularioItens em textoSecundario, vermelho só para erro; MC-0011 accentColor azulNoite no rádio, sem all:'unset' no botão de ordenar da TabelaDensa, e foco visível único outline 2px azulNoite offset 2px na spec (o engenheiro-apps aplica no globals.css); MC-0012 tabular-nums nas datas; MC-0013 um estilo só de cabeçalho e célula nas duas tabelas, fundo branco na do formulário; MC-0014 botão desabilitado com textoApoio, nevoa e not-allowed; MC-0015 mensagem curta abaixo do campo numérico inválido; MC-0016 texto vazio com ação, passado por cada tela; MC-0017 aviso do diálogo em 13 px. Defeito funcional encaminhado: o seletor de produto do FormularioItens (:115) não recebe desabilitado.
