---
id: R-20261124-185302-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:53:02-04:00
---
# banco-dados: parecer do corretor no #555 (0055, 1485ff40) sem 🔴; RD-1565 e RD-1566

## Contexto
Contexto: rodada única do corretor-redundancias no #555; sem 🔴.

## O que preciso / o que mudou
O que preciso, no PR curto antes do liberar, junto com os RD-1560 a 1563 e 1585: RD-1565 🟡 0055:95-106: o SELECT DISTINCT registro_external_id, codigo, campo FROM lote_erro ... resolvido_em IS NULL aparece 2 vezes no portal_log ('erros' e 'total_erros'); agrupar uma vez com WITH g AS (... GROUP BY codigo, campo), total_erros = sum(quantidade) de g e erros = os 200 primeiros de g. RD-1566 🟡 0055:159-162 e 166-169: o EXISTS (SELECT 1 FROM lote_erro ...) se repete no portal_reprocessar; calcular uma vez com CROSS JOIN LATERAL (SELECT EXISTS(...) AS erro_aberto) f. 🟢: o cabeçalho 0055:5-20 repete os COMMENT ON (62, 112, 190) e o README §0055; deixar só as regras e as premissas (22-33). 🟢 futuro: a checagem 'cadastro fora da F2' com cast para entidade_hub aparece 2 vezes aqui e 2 na 0038 (411, 448); criar portal_entidade_f2(text) RETURNS entidade_hub. Como a 0055 já foi a PR, a mudança vai em migração nova, com CREATE OR REPLACE.

## Pronto quando
Pronto quando: aplicados, com o db verde.
