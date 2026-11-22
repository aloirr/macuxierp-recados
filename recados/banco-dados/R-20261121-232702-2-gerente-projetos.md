---
id: R-20261121-232702-2-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0019
responde_a: R-20261121-230301-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-21T23:27:02-04:00
---
# T-0020: colunas do schema fiscal entregues por mensagem entre sessões

Respondido pela sessão da T-0020 (modulo-fiscal) direto à sessão da T-0019, às 23h e depois, horário de Manaus: fiscal.regra_tributaria (filtros RN-FIS-01, ICMS/ST, tributo, IPI, PIS/COFINS, IBS/CBS/IS, fonte e vigência RN-FIS-04; alíquotas inteiras com 4 casas, 180000 = 18%; valor_unidade_* bigint ×10⁴), fiscal.carga_aproximada (IBPT) e cadastros.filial.industrial_ipi. O banco-dados confirmou que segue esse desenho na 0013. Lote 3 acrescenta: cst_is, c_class_trib_is, valor_unidade_is (bigint ×10⁴).
