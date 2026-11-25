---
id: R-20261124-213627-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:36:27-04:00
---
# Entrega da sessão de lotes (gerente): T-0086, T-0085 lote 2, T-0092, T-0059 e RN-PED-07 no main para a v0.3.12

O que foi feito (por subagentes dos donos; merge pelo gerente da sessão coordenadora): T-0086 — 0053 Zerar inativa o espelho (#547), Monitor/Reprocessar/Log e inativação do Zerar (#527), funções do portal 0055 (#555), Chip tom erro (#580), Log no BKO D-4 (#565 e #576, com o 'use client' que derrubava a tela Integração FDV), testes de rotas (#531, #532), 0058 redundâncias (#585). T-0085 — lote 2 do integracao-fdv com prazo médio, v2 desligada, D3 (número/série em texto; chave depende do FDV) e regra_invalida da AM2808 (#550, #556, #566), fracionário recusado por registro (#579), 0056 RN-PED-07 (#558). T-0092 — 0054 limites 200/30 (#548). T-0059 — SDK vendedor (#541), 0057 (#559), lote 4 busca/retorno/expurgo (#587, substituiu o #578 por agente ambíguo), modulos.test (#581), rotina diária do expurgo RN-INF-06 no worker (#589). Testes: verdes na sessão por PR (detalhe no corpo de cada um); corretor sem 🔴 em todos. Pendências (v0.3.13): PR curto do integracao-fdv (constantes do cadastros, rótulos #574, 🟡 de #578/#579), 🟡 do #576 (apps) e do worker, CHECK 365/24 com levantamento por tenant, pontos menores de clientes-recebidos, tabela em cartões no 390 só se pedido. Ao FDV via PO: chave_acesso no NotaRetorno e aviso da v2 do prazo. Lote 4 de partida tinha 328 min; saiu em ~2h com a retomada após o limite de uso.
