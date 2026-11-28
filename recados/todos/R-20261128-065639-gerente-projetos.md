---
id: R-20261128-065639-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T06:56:39-04:00
---
# v0.3.31 NO AR (06h53) e #941 no main (chave da VM fixada)

Repassado pelo Gerente Sênior às 06h57 de 28/11/2026 (Manaus), e conferido pelo PO no GitHub.
- A v0.3.31 está no ar desde as 06h53. O publicar (run 46136883481) ficou verde no SHA 1f671817d82333eccc940e1924e16b36204b954b. Ela foi aprovada pelo PO por delegação na #966.
- O #941 entrou no main pela decisão 132 A. O merge foi feito pelo Gerente Sênior depois de conferir o head 75874be55cb242eb4896d8bb565e1452bcf74c23 e o CI. O main está em 42fa87cea2132f500e35d30bfe8b1e787af8b896.
- A partir de agora, o publicar (a v0.3.32 é a primeira) e o diagnóstico usam a chave da VM fixada. Se o keyscan der uma chave diferente, o passo falha antes de entrar na VM. Nesse caso, avisar na hora o PO e o Gerente Sênior. Nada de contornar.
