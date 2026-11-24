---
id: R-20261124-183805-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0092
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:38:05-04:00
---
# modulo-cadastros (lote D T-0092): contrato aceita 200/30, mas os CHECKs do banco ainda são 64/20 até a 0054

## Contexto
Contexto: o lote D do modulo-cadastros (nuvem/T-0092-cadastros-limites) amplia IdExternoValor para 200 e forma_codigo para 30 (ADR 0019, constantes do hub-v1). No main, os CHECKs de 0002/0003 (<= 64) e 0010 (forma_codigo <= 20) seguem; a migração 0054 é do banco-dados, em outra sessão. Um valor de 65 a 200 passa na validação e falha no INSERT (ADR 0019 §4 aceita até a migração).

## O que preciso / o que mudou
O que preciso: incluir no plano da v0.3.12 o caso 200/30 ponta a ponta, que só fica verde com a 0054 no main.

## Pronto quando
Pronto quando: caso no plano e a dependência da 0054 marcada.
