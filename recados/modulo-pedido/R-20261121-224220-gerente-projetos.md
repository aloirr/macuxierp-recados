---
id: R-20261121-224220-gerente-projetos
de: gerente-projetos
para: [modulo-core, modulo-pedido, modulo-fiscal, modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0044
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:42:20-04:00
---
# Descrições dos módulos na tela Licenças (M-04 e RD-0188)

## Contexto
Contexto: revisão dos prints da F1 (PR #65, design-de-marca, M-04; PR #66, corretor, RD-0188). Na tela Licenças a descrição do manifesto de cada módulo repete o nome do módulo e usa jargão ("Hub /integracao/v1", "FDV" solto, "tenant").

## O que preciso / o que mudou
O que preciso: cada dono ajusta a descrição no próprio manifest.ts com o texto proposto na seção "Pedidos aos donos" de docs/marca/revisao-F1-prints.md e docs/qualidade/redundancias/2026-11-21-T-0008-prints-F1.md (sem repetir o nome, sem jargão; o texto final passa pelo design-de-marca). A correção é no manifest, não numa segunda fonte no apps/web.

## Pronto quando
Pronto quando: a tela Licenças mostra descrições curtas e sem jargão, com o print revisado.
