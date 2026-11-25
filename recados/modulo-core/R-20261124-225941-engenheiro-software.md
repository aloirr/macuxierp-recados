---
id: R-20261124-225941-engenheiro-software
de: engenheiro-software
para: [modulo-core]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0100
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T22:59:41-04:00
---
# T-0100: core consome cadastros.filial.alterada@1 e cria a core.empresa da 1ª filial padrão

Desenho: docs/desenho/T-0100.md (branch agente/T-0100-desenho; vai em PR meu agora). Decisão: evento, sem emenda da ADR 0012. A exceção da 0012 é só das funções SQL do portal, que leem; aqui o core grava no próprio schema a partir de um evento publicado. Seu escopo: (1) domain, função pura empresaDaFilialPadrao(filial, empresaExiste), com teste antes: só cria quando padrao=true, inativo=false e a empresa do tenant não existe; nunca atualiza. A RN nova fica com o PO. (2) manifest: consome ['cadastros.filial.alterada@1']. (3) consumidor core.empresa-da-filial-padrao, na transação do tenant: INSERT ... ON CONFLICT (tenant_id) DO NOTHING com razao_social, nome_fantasia, cnpj e ie da filial e o fuso do tenant; auditoria core.empresa.criada com origem filial_padrao; publica core.empresa.alterada@1 como o PATCH. (4) testes de unidade e de banco: cria uma vez; repetido ou corrida = nada; inativa ou não padrão = nada; RLS. A 0059 (backfill) é do banco-dados e não depende de você. Estimativa: me mande a sua, com +15%.
