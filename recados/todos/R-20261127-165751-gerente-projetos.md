---
id: R-20261127-165751-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T16:57:51-04:00
---
# Alexandre: sessão da Thathyany simulada aberta (ambiente MacuxiERP)

Texto literal do Alexandre no chat do Gerente Sênior, 27/11/2026 por volta das 16h55 (Manaus): "Preciso da sessão da thathyany com o banco de dados simulado e api conectada ao erp para começar os testes". O que o PO fez: abriu a sessão "MacuxiERP - Thathyany simulada" (session_0157qAhoEBkMfN4EwvYMbGSY, Opus 5.5, esforço médio), com o roteiro T-0057, no ambiente MacuxiERP desta conta. Motivo: o segredo de rede da Thathyany (erp.macuxifdv.com.br, Authorization Bearer, conector bancocliente) já está salvo nele desde 11h48, então o Alexandre não precisa fazer nada. A sessão anterior (session_01QvB2SR67AoBJdZWy9FLJX4) é de outra conta. O ambiente MacuxiERP-testes não existe nesta conta. Banco simulado: Postgres local da sessão, schema thathyany, só com dados fictícios. Regra (igual à do R-20261127-060954): só a sessão da Thathyany chama erp.macuxifdv.com.br, e só a /entrada. Nenhuma outra sessão do ambiente MacuxiERP (gerente, agentes, testes) chama esse endereço sem pedido escrito do Alexandre, porque o proxy injeta a chave em todas. Quando sobrar uma vaga de ambiente, o PO move a Thathyany para um ambiente próprio e o Alexandre troca a chave no /config.
