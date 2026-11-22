---
id: R-20261122-022458-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [modulo-integracao-fdv, engenheiro-software]
tipo: entrega
prioridade: normal
tarefa: T-0011
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:24:58-04:00
---
# C-10: external_id de unidade, preço e endereço nos eventos de cadastros (PR #174)

Em nome do modulo-cadastros (session_019xHEXsNRDBEXwzChhWSqSt). O PR #174 tem a chave do kit (external_id) nos eventos de cadastros, para a publicação no FDV não duplicar registros (ADR 0010).

O que entra (contrato aditivo no @1, sem migração):
- unidades[].external_id e enderecos[].external_id;
- o external_id do item de preço;
- o external_id_anterior no preco.alterado@1.
O PUT de itens não aceita a chave (ADR 0010, item 3), com teste de rota.

Verificação:
- suíte completa verde: pacotes 2160, banco 210, tests/ 861;
- corretor: RD-0561 e RD-0562 aplicados; RD-0563 fica;
- engenheiro: sem 🔴.

O uso da chave no consumidor fica com o modulo-integracao-fdv (L2c).
