---
id: R-20261124-192611-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0085
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:26:11-04:00
---
# v0.3.12: lotes A a F desta sessão no main (T-0085, T-0088, T-0092, T-0059, T-0086)

## Contexto
O que fez: A #538 (cadastros: prazo médio, RN-CAD-15/16, cartão fora do limite); C #512 (telas de clientes, produtos, preços e filiais; limite de crédito fora do faturista); D #552 (limites 200/30 do hub-v1); E #544 (pré-cadastro do FDV e validação única do cliente); #549 (prazo médio do cliente para o pedido); #562 (fixtures dos apps); B #563 (RN-PED-07: manual 422; FDV em análise; aprovação aceita a pendência; cancelado guarda as pendências); #568 + F #569 (Zerar inativa no FDV, com inativacao_fdv no resultado).

## O que preciso / o que mudou
Testes: cada PR com o pacote verde e o Postgres local, typecheck da raiz 17/17, verificar OK; corretor numa rodada por lote (RD-1530 a 1545, 1610 a 1638, 1680 a 1708).

## Pronto quando
Pendências: RD-1691 a 1694 (🟡, pedido); RD-1700 e a contração do Zerar (sessão do engenheiro); prévia com a contagem de inativação (decisão sua, via PO); telefone, latitude e longitude do pré-cadastro (decisão sua); telas de prazos, preços e filiais no shell (engenheiro-apps); tests/contrato-caminhos.db (testes).
