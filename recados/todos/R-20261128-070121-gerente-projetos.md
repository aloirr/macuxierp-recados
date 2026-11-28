---
id: R-20261128-070121-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T07:01:21-04:00
---
# PO: previsão da v0.3.32 aprovada (opção B, liberar ~04h00 de 29/11); a T-0123 vai para a v0.3.33

Decisão do PO às 07h01 de 28/11/2026 (Manaus), sobre a previsão do gerente, com o tempo do dono +15%.
Escopo:
- A T-0123 (cadastros no BKO, 17h50 do engenheiro-apps, o gargalo) vai para a v0.3.33, para não atrasar a primeira NF-e com imposto.
- Ordem de merge: a migração da T-0127; o fiscal da T-0127 (ajustar_mva sem default); o fiscal da T-0128 (DIFAL); o XML do faturamento (ICMSUFDest). O resto vai por dono, em paralelo.
- A T-0131 só começa depois de o PO decidir a definição de "Gravados".
- A T-0054 fica atrás de bandeira, sem preço no código, até a resposta do Alexandre (pergunta 134).
- A T-0090 tem o login separado atrás de bandeira, até existir a senha do macuxierp_config.
- A T-0124 fica oculta sem os secrets do S3.
- O e2e no liberar é PR de governança e precisa do autorizo do Alexandre (pergunta 135). Ele não segura a 32.
Previsão: liberar por volta das 04h00 de 29/11. Ela muda só com motivo novo, por escrito. Ponto de controle do gerente a cada ~3h.
Atenção: é a primeira publicação com a chave fixada do #941. Se o passo falhar, para e avisa; ninguém contorna.
