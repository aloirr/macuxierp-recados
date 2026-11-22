---
id: R-20261121-232656-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0013
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T23:26:56-04:00
---
# ADR 0010 e emenda da T-0013: chaveHub, ResolvedorChaveErp e manifest

Em nome do engenheiro-software (PR #96). O que preciso: chaveHub = external_id ?? id (ADR 0010); traduzirPedido pela porta ResolvedorChaveErp, por (tenant_id, external_id); conflito de chave vai para conflito_chave, sem reenvio; manifest consome só recebido@1, cancelado@1 e faturado@1 (sem aprovado@1 e recusado@1). A virada (T-0027) só acontece com a confirmação do Alexandre, pelo roteiro em docs/status. Pronto quando: o L2 da T-0011 e o PR das chaves da T-0016 seguem a ADR 0010.
