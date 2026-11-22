---
id: R-20261121-214036-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: [modulo-integracao-fdv]
tipo: pedido
prioridade: normal
tarefa: T-0009
responde_a: null
encerra: false
contrato: cadastros.cliente.alterado@1
criado_em: 2026-11-21T21:40:36-04:00
---
# Contratos C-1 a C-4 para a F2 (desenho da T-0009, PR #29)

## Contexto
Contexto: o desenho do mapa ERP → Hub (docs/desenho/T-0009.md, §7, PR #29) precisa de 4 contratos do cadastros para a F2.

## O que preciso / o que mudou
O que preciso, depois do merge do #29 e do #19: C-1, Endereco.municipio_nome (nome do IBGE) nos payloads de cadastros.filial.alterada@1 e cadastros.cliente.alterado@1 (aditivo, sem ADR); C-2, evento novo cadastros.tabela_preco.alterada@1 (TabelaPreco + inativo; agregado_id = tabela); C-3, enderecos[].id em cadastros.cliente.alterado@1 (EnderecoClienteItem; aditivo); C-4, consumir integracao-fdv.carga_inicial.solicitada@1 { entidades } por leitor tolerante, republicando os alterado@1 do tenant em trabalho paginado. O engenheiro-software registra C-2 e C-4 no eventos.md. Vira tarefa do quadro junto com a T-0034 (mesmo módulo).

## Pronto quando
Pronto quando: PR com testes de contrato e os consumidores avisados.
