---
id: R-20261121-214029-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0026
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T21:40:29-04:00
---
# Implementar a carga CSV (etapa 2)

## Contexto
Contexto: desenho docs/desenho/T-0026.md (PR #26, engenheiro-software).

## O que preciso / o que mudou
O que preciso: contracts (IdExternoValor e contrato da carga), domain/carga/* com testes das RN-CAD (documento, IE, IBGE, NCM, CEST, parcelas não decrescentes, Qtd4), api/carga.ts (POST /v1/cadastros/cargas multipart, ação cadastros.carga.executar), página no BKO e fixture CSV fictícia anonimizada; teste multi-tenant. Nenhum dado real da thathyany no repositório.

## Pronto quando
Pronto quando: PR em nuvem/T-0026-carga-csv-impl, depois do merge do PR #19 (T-0029), com testes verdes na sessão.
