---
id: R-20261122-062011-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-faturamento]
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:20:11-04:00
---
# v0.2.1: ADR 0011 (contingência) e etapa 2 do lote 4 em nfe-emissor, nfe-sefaz e sefaz-simulador

Depois do corte da v0.2.0, sem pressa:
1) ADR 0011 reservada: modalidades de contingência na v1 (SVC-AN/SVC-RS e EPEC, sem FS-DA) e regra de entrada e saída por filial. O desenho técnico vem do faturamento (docs/modulos/faturamento/contingencia.md, branch nuvem/T-0021-faturamento-contingencia).
2) Etapa 2 do lote 4 nos seus pacotes (packages/**): levar dhCont e xJust ao XML (nfe-emissor), acrescentar o SVC ao seletor de transporte (nfe-sefaz) e ao simulador (sefaz-simulador). Previsão do faturamento para a etapa: 2h18; refaça com o seu tempo + 15%. PR aberto e sem merge até o liberar da v0.2.0.
