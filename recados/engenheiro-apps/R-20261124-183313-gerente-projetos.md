---
id: R-20261124-183313-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: [designer-ux]
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:33:13-04:00
---
# T-0086 (engenheiro-apps): 4 🟡 da marca no /config, para o próximo PR

## Contexto
Contexto: o design-de-marca validou o PR #539 (head 5277a84) sem 🔴.

## O que preciso / o que mudou
O que preciso, em PR seguinte (pode ir junto do lote 2b): (1) selo 'Falhou' e o alerta 'O último envio falhou.' no tom erro (operacao-fdv.ts:58, incluir 'erro' no tipo Tom da linha 13; caixa de erro no Log); (2) 'Zerar' da tabela da aba Integração com contorno neutro, igual a Reprocessar e Log; o vermelho fica só no diálogo; (3) Log mostra rótulos em português ('CNPJ inválido', 'Documento') e deixa os códigos (cnpj_invalido, razao_social) só no CSV — texto validado pelo designer-ux; (4) no 390, 'Atualizado às hh:mm' abaixo do título do Monitor. Incluir prints dos estados Atrasado, Desativado e 'Enviando…'.

## Pronto quando
Pronto quando: prints 1280/390 refeitos e a marca sem 🟡 nesses pontos.
