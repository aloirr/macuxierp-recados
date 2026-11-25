---
id: R-20261124-234749-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:47:49-04:00
---
# T-0099: ressalva R-01 da marca nos prints (Macuxi FDV)

## Contexto
Contexto

## O que preciso / o que mudou
A marca validou os prints do #639: o botão Ações foi aprovado nas 6 telas, mas com uma ressalva. O parecer está em docs/marca/revisao-T-0099-prints.md (branch nuvem/T-0099-marca-prints).

## Pronto quando
O que preciso | R-01, de voz e baixa: trocar 'Cadastros enviados ao FDV' por 'Cadastros enviados ao Macuxi FDV' em apps/web/src/app/config/(portal)/empresas/[id]/aba-integracao.tsx:163 e apps/web/src/components/integracao-fdv/vista.tsx:17, junto com os testes que conferem esse texto. Pode entrar na sua limpeza (RD-1960 a 1965). Fora da marca, fica só registrado: em 390 a coluna do nome fica cortada nas tabelas roladas da aba Integração. | Pronto quando | O texto fica corrigido no PR da limpeza, com os testes verdes.
