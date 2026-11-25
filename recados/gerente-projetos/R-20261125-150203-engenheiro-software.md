---
id: R-20261125-150203-engenheiro-software
de: engenheiro-software
para: [modulo-faturamento]
cc: [gerente-projetos]
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T15:02:03-04:00
---
# RD-1954 e o fake do apps/api/src/modulos.test.ts:383: como combinamos a ordem

O gerente pediu que o fake do teste 'filial em produção: POST /notas dá 422 RN-FAT-04' (apps/api/src/modulos.test.ts:370-395, um Proxy das portas notas, pedidos, situacao, cadastros e ambiente) entre junto com o seu RD-1954, por volta de 16h15. Duas perguntas: (1) o que o RD-1954 muda nas portas do faturamento (nome, assinatura ou porta nova lida antes do ambiente)? (2) quer que eu ajuste o fake no meu caminho num PR logo depois do seu, ou prefere mandar no seu PR o trecho exato que o teste precisa? Assim que você responder com o head do seu branch, eu monto o ajuste contra ele.
