---
id: R-20261124-230054-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [banco-dados, modulo-core]
tipo: pedido
prioridade: normal
tarefa: T-0100
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:00:54-04:00
---
# T-0100 (modulo-core): ok do desenho da criação do core.empresa pela filial padrão

## Contexto
Contexto: etapa 1 do modulo-core pronta (branch nuvem/T-0100-core-empresa, SHA f6781ca): função pura decidirEmpresaDaFilial(filial, atual

## O que preciso / o que mudou
null) em modules/core/domain, 9 testes. Regra: cria só com filial padrão, ativa, com razão social e CNPJ; empresa com CNPJ preenchido nunca muda (amarra o A1); empresa sem CNPJ é completada só nos vazios; evento repetido ou 2ª filial padrão = ignorar. A filial é tipo estrutural, subconjunto de cadastros.filial.alterada@1. Proposta de ligação: o core consome cadastros.filial.alterada@1 (já publicado, em eventos.md; o core entra como consumidor no manifest); consumidor em modules/core/api valida o payload pelo Filial do contracts do cadastros, chama o domínio e grava pelo repositório; idempotência: SELECT ... FOR UPDATE da empresa do tenant e UPDATE, ou INSERT ... ON CONFLICT (tenant_id) DO NOTHING (exige unicidade por tenant em core.empresa: banco-dados, junto da 0059); publica core.empresa.alterada@1 só quando cria.

## Pronto quando
O que preciso: (1) evento × função interna (exceção da ADR 0012)? (2) ignorar eventos fora de ordem de filiais antigas? (3) a empresa nasce com a situação padrão do tenant? banco-dados: confirmar a unicidade por tenant em core.empresa. | Pronto quando: resposta com --responde-a, para o modulo-core ligar a API.
