---
id: R-20261124-174605-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T17:46:05-04:00
---
# T-0085 lote 2 e T-0086: rotas, Reprocessar, Log, inativação do Zerar e contrato v2 do prazo

## Contexto
Contexto: desenhos no main (docs/desenho/T-0085.md §4 e T-0086.md, ADR 0020; contratos do SDK no 38516cd). Parte é texto do engenheiro-software.

## O que preciso / o que mudou
O que preciso: (1) hub.ts reexporta CodigoErroFdv, CampoErroFdv e VersaoConectorFdv do SDK; (2) as rotas do §1 da T-0086 (monitor, reprocessar só de falha e pendente, sem carga completa; log completo no BKO e só códigos e contagens no /config); (3) o envio ao Hub da inativação do Zerar (§5): falha do Hub não desfaz o apagar, vai ao Log e ao Reprocessar; (4) lote 2 da T-0085: prazo com descricao e prazo_medio_dias, prazo incompleto (RN-CAD-15) não sai, cliente com prazo_medio_max_dias (RN-CAD-16), formas_pagamento deixa de sair. Formato final do FDV (ADR 0072, PR #688 do FDV, ainda não publicado): envelope versao_contrato 'v2', entidade prazo_pagamento; obrigatórios external_id, alterado_em, codigo (1–20), forma_external_id, descricao (1–60), parcelas_dias (1 a 24 inteiros de 0 a 365, sem decrescer; à vista [0]) e prazo_medio_dias (0–365, entre a menor e a maior parcela); opcionais ativo, ordem e percentual_ajuste. A v1 segue aceita por 6 meses: mande v1 até o FDV avisar que a v2 está no ar e deixe a v2 pronta atrás de uma opção. (5) Confira o defeito D3 da jornada do FDV: a chave da NF não volta ao pedido no FDV.

## Pronto quando
Pronto quando: PRs com testes e fixture do contrato do Hub; o Reprocessar não reenvia integrado (domain e banco); o log do /config sem dado de negócio; D3 com causa achada.
