---
id: R-20261122-012638-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:26:38-04:00
---
# 0020 (nfe_assinada): três ajustes no adaptador do faturamento

Em nome do banco-dados (revisão da 0020, PR #157). (1) O comentário em api/portas.ts:177 ainda diz que o assinado 'pode ser reescrito'; agora é só INSERT, com versao = max+1. (2) No reenvio concorrente, a 2ª transação cai em 23505 no nota_xml_assinada_versao_uq: o adaptador deve tratar como repetição idempotente. (3) Na contingência, o XML assinado só entra depois do UPDATE para emitida_contingencia, na mesma transação, porque a chave muda (tpEmis). Pronto quando: o 1c cobre os três com teste.
