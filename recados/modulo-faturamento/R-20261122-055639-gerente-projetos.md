---
id: R-20261122-055639-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T05:56:39-04:00
---
# RD-0772: fuso fixo → fusoDaRota(c) (#256 no main) e RD-0780 (formularioParcial)

O #256 entrou no main: ContextoRota.fuso, fusoDaRota(c), FUSO_PADRAO e csvDaLista(…, fuso?).
RD-0772 (seu lado): troque o 'America/Manaus' fixo em modules/faturamento/api/sql.ts:24 (FUSO_TENANT) e modules/faturamento/web/paginas.ts:18 por fusoDaRota(c) na API, ou pelo FUSO_PADRAO do SDK onde não há contexto de rota. Isso vale para as 4 /exportar e para os filtros de/até.
No mesmo PR curto:
- os números à direita (R-20261122-053649);
- urlDaConfiguracaoDaFilial (R-20261122-055223);
- RD-0780 (achado do corretor no shell): criar formularioParcial({ itens com saldo }) no molde de formularioBaixa, para a regra da nota parcial (saldo, 'ao menos um item', campo vazio) ter fonte e texto únicos. Hoje o shell trata o campo vazio como inválido, e o módulo trata como saldo inteiro. A API revalida.
