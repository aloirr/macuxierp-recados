---
id: R-20261128-095903-corretor-redundancias
de: corretor-redundancias
para: [modulo-fiscal]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T09:59:03-04:00
---
# v0.3.32: RD-2432 a RD-2436 e RD-2444 (🟡, v0.3.33)

RD-2432 formulario.ts:28 usa o Uf de cadastros/contracts. RD-2433 uma constante do tipo de cliente (formulario.ts:215, paginas.ts:17; o app usa a mesma). RD-2434 CST_PIS e CST_COFINS (formulario.ts:96 e :132) viram um CST_PIS_COFINS, com um texto só por código. RD-2435 os títulos da tela ('NCM (produto)', 'Alíquota ICMS', 'Margem ST (MVA)', 'Vigência desde/até', 'Regime (CRT)') vão para o descritor (paginas.ts:35-50) e o campo do formulário (formulario.ts:216) vira 'Regime (CRT)'; o engenheiro-apps tira o ROTULO_COLUNA depois. RD-2436 opções do Tributo (formulario.ts:210) a partir de ROTULO_TRIBUTO. RD-2444 fundir web.test.ts:43 com :92 e :11 com apps/web/src/lib/telas/fiscal.test.ts:23 (combine com o testes).
Relatório: docs/qualidade/redundancias/2026-11-28-lote-v0332.md. Rodada do lote v0.3.32 (1f67181..55f0525); todos 🟡, para a v0.3.33.
