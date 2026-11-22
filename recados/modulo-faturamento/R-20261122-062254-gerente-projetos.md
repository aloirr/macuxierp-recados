---
id: R-20261122-062254-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: [modulo-fiscal]
tipo: aviso
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:22:54-04:00
---
# RN da contingência (v0.2.1) no PR #262: RN-FAT-05 nova, RN-FAT-08 a 10

O PO definiu a RN da contingência (22/11 06h21, Manaus). Ela está no PR #262 (doc 03), que entra só depois do liberar da v0.2.0. Resumo:
- RN-FAT-05: o operador decide a entrada (o sistema sugere), por indisponibilidade na consulta de status ou por tempo-limite; a modalidade vem da ADR 0011 (SVC-AN/SVC-RS ou EPEC); justificativa com no mínimo 15 caracteres; filial "em contingência" em destaque; FS-DA fora.
- RN-FAT-08: mesma série e sequência (RN-FAT-01); tipo de emissão e justificativa no XML; DANFE com a marca da modalidade; guarda pela RN-FAT-03; na EPEC, o pedido só conta como faturado depois do evento vinculado.
- RN-FAT-09: volta à normal pelo operador; notas EPEC em fila, sem dobrar o número, dentro do prazo; tela com as pendentes e o prazo; prazo vencido gera alerta vermelho ao administrador; rejeição segue a RN-FAT-07.
- RN-FAT-10: filial com NF-e simulada não entra em contingência.
Fiscal e faturamento: conferir contra o Manual e as NT vigentes o tpEmis de cada modalidade, o prazo da EPEC e a tabela SVC por UF. Se algo divergir, vale o Manual e o PO é avisado. Ajustem o domain/contingencia.ts do lote 4 a essas RN; a RN-FAT-10 é nova em relação ao desenho.
