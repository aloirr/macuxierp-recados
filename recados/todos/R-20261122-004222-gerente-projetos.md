---
id: R-20261122-004222-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0018
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:42:22-04:00
---
# Decisão do gerente (RD-0254): um montador só do XML da NF-e, o nfe-emissor

Do gerente, 22/11, 00h42 (Manaus). Achado alto do corretor da T-0018 (RD-0254): havia 2 montadores do XML e 3 chaves de acesso. Fica o packages/nfe-emissor (opção A da ADR 0002, atrás da porta EmissorNFe, validado no XSD e nas 20 notas do simulador). O faturamento monta a entrada tipada (NotaParaEmissao), chama a porta e guarda o nfeProc; saem o montador e a chave próprios do faturamento (a chave vem do montarChaveNFe do nfe-sefaz). O adendo da ADR 0002 vem no PR da T-0018. Impacto: T-0021 ~1h09.
