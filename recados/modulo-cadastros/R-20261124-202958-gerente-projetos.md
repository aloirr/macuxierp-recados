---
id: R-20261124-202958-gerente-projetos
de: gerente-projetos
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T20:29:58+00:00
---
# Contracts: prazo_medio_dias no prazo e no cliente e prazoPermitidoAoCliente

## Contexto
Texto do engenheiro-software (desenho b131bbc), enviado pelo gerente porque o subagente não grava recado com outra identidade. Contexto

## O que preciso / o que mudou
T-0085 (ADR 0020). Proposta exata em docs/desenho/T-0085.md §2. Eventos seguem @1 (aditivo; .coord/contratos/eventos.md, "Aditivo T-0085"). O que preciso

## Pronto quando
modules/cadastros/contracts/index.ts: PrazoMedioDias (int 0..999); CondicaoPagamentoDados.prazo_medio_dias obrigatório na entrada; CondicaoPagamento (entidade e evento) com prazo_medio_dias nullable default null; ClienteDados.prazo_medio_dias nullable default null; prazoCompleto e prazoPermitidoAoCliente (puras); LinhaCondicaoPagamento e LinhaCliente com prazo_medio_dias; CSV sem "Nx". RN-CAD-12 e RN-CAD-13 no domain com teste citando a RN; 422 com campo. Pronto quando | Contracts e domain com testes verdes; pedido e integracao-fdv importam prazoPermitidoAoCliente e os campos novos.
