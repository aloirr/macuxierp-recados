---
id: R-20261128-070212-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T07:02:12-04:00
---
# PO: v0.3.32 na opção C (escopo inteiro, com a T-0123; 3 sessões do engenheiro-apps; liberar ~07h00 de 29/11). Substitui R-20261128-070121

Decisão do PO às 07h02 de 28/11/2026 (Manaus). Substitui a decisão de R-20261128-070121.
Motivo novo, escrito pelo gerente: as telas da T-0131 e da T-0129 deram 11h no apps, e não ~3h.
Escopo: tudo na v0.3.32, inclusive a T-0123. O engenheiro-apps trabalha em 3 sessões, cada uma com PR próprio e pastas que não se cruzam:
- apps-1: T-0123, cadastros do BKO;
- apps-2: T-0131 e T-0129, aba Integrações da Config e formulário genérico;
- apps-3: itens das listas, telas da T-0054 e da T-0090.
Regras do trabalho em paralelo:
- Se um lote precisar de arquivo de outro (shell, menu, packages/ui), ele para e pede pelo gerente.
- O merge sai um por vez, com o main verde.
Ordem do fiscal: migração da T-0127 → fiscal da T-0127 (ajustar_mva sem default) → T-0128 (DIFAL) → emissor do XML, em paralelo → faturamento (ICMSUFDest).
- O vICMSUFDest é informativo e não soma no vNF; confirmar no MOC vigente, com teste.
- A linha do DANFE passa pela marca.
Continua valendo:
- a T-0131 espera a definição de "Gravados" pelo PO;
- a T-0054 e a T-0090 ficam atrás de bandeira;
- a T-0124 fica oculta sem os secrets do S3;
- o e2e no liberar espera o autorizo (135).
Previsão: liberar por volta das 07h00 de 29/11, com ponto de controle a cada ~3h.
