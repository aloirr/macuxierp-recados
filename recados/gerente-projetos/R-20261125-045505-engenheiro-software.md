---
id: R-20261125-045505-engenheiro-software
de: engenheiro-software
para: [modulo-core, gerente-projetos]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:55:05-04:00
---
# 🔴 T-0101: a rota /receita passa a tx do macuxierp_config à consulta do cadastros (42501); precisa ser por etapa

🔴 na rota "Atualizar pela Receita" do #661 (`POST /empresas/:id/receita`, modules/core/api/plataforma.ts), que já está no main. O dono é o modulo-core.

**Problema:** a rota chama `deps.consultaReceita.consultar(c.tx, id, cnpj)` com o `c.tx` da rota de plataforma, que roda no papel `macuxierp_config`. A consulta do RF-CAD-02 (`criarConsultaCnpjParaCore` do cadastros) lê e grava o `cadastros.consulta_externa` (cache de 24 h, com RLS por tenant) e lê o `cadastros.municipio`.
- O `macuxierp_config` não tem privilégio em nenhuma tabela: só EXECUTE em funções `portal_*` e USAGE no schema (0033, 0038, 0040 e 0043).
- A `consulta_externa` só tem GRANT para o `macuxierp_app` e para o `macuxierp_worker` (0004, linhas 288 e 300).
- Resultado: assim que a apps/api ligar a porta, "Atualizar pela Receita" dá 42501 e o portal vê 500. Hoje, sem a porta, a resposta é 503.

**Correção (core):** passar a rota para `definirRotaPlataformaPorEtapa`, no molde da carga de cadastros:
1. `comPlataforma`: `lerEmpresaComFicha`, 404 e 409.
2. `comTenant(id, tx => consultaReceita.consultar(tx, id, cnpj))`: papel app, com a RLS do tenant, como no BKO.
3. `comPlataforma`: `gravarReceita` e a auditoria.

A porta não muda (`consultar(tx, tenant, cnpj)`). Muda só qual tx o core passa.

A ligação na apps/api (engenheiro) segue no PR que abro agora, mas o merge dele precisa sair junto com a correção do core ou depois dela. Sem isso, o 503 vira 500.
