---
id: R-20261124-210737-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:07:37-04:00
---
# testes (prints I-9/C-5): ajustes de fumaça para a sessão do testes

## Contexto
A sessão dos prints I-9/C-5 (branch nuvem/T-0086-prints-api-real, sobre o main d5012cd) tinha ajustes de fumaça que, pela mudança de escopo do gerente (21h10 de Manaus), saem desse PR. O main d5012cd ainda NÃO tem nenhum deles.

## O que preciso
Que a sessão do testes que conserta a fumaça do #560 confira e inclua, se ainda faltar:
1. tests/integracao/rotas/fumaca-telas.db.test.ts
   - import de `urlDaConfiguracaoDaFilial` de modules/faturamento/web/index;
   - em NAO_EXTRAIVEIS, as 2 chamadas de apps/web/src/app/(shell)/[modulo]/[...pagina]/telas-quadro.tsx: `:: FILIAIS` (/v1/cadastros/filiais?limite=200) e `:: urlDaConfiguracaoDaFilial(f.id)`;
   - em GETS_ESTRUTURADOS: `/v1/cadastros/filiais` (filiais do quadro), `urlDaConfiguracaoDaFilial(ID)`, o Monitor da aba Integração (`PREFIXO_PLATAFORMA + CAMINHOS_INTEGRACAO_FDV_PLATAFORMA.monitor`) e o Log por cadastro (`ENTIDADES_ENVIO_FDV.map(e => ...log.replace(':entidade', e))`), como já é feito com o modelo da carga.
2. tests/integracao/rotas/fumaca-rotas.json (regenerado): GET /v1/core/auditoria/exportar, /v1/core/licencas/exportar, /v1/core/usuarios/exportar; GET /v1/plataforma/empresas/:id/integracao-fdv/monitor; GET .../integracao-fdv/entidades/<e>/log para as 10 entidades (cliente, cliente_endereco, estoque, filial, forma_pagamento, prazo_pagamento, preco, produto, produto_unidade, vendedor), origem contexto empresa.

## Pronto quando
fumaca-telas.db.test.ts verde com Postgres local cobrindo as telas do #560 e o Monitor/Log da aba Integração (X-2 do plano-v0.3.12), sem contagem escrita à mão.
