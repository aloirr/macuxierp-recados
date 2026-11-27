---
id: R-20261127-103200-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: normal
tarefa: v0.3.24
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T10:32:00-04:00
---
# banco-dados: faturamento.tem_nfe_autorizada_producao (migração 0077, ficha editável)

O banco-dados vai criar, na migração 0077 (v0.3.24, RN-CORE-16), a função faturamento.tem_nfe_autorizada_producao(p_tenant uuid) RETURNS boolean. Ela é STABLE, SECURITY DEFINER e com search_path fixo, sem EXECUTE para PUBLIC nem para o app, e devolve só o boolean. Ela faz EXISTS em faturamento.nota com ambiente='producao' e status em (em_autorizacao, autorizada_guarda_pendente, autorizada, cancelada, denegada, emitida_contingencia, inutilizada): toda nota que já foi para a SEFAZ com aquele CNPJ. A plataforma.empresa_trocar_cnpj chama essa função dentro do FOR UPDATE da core.empresa, para barrar a troca de CNPJ. Preciso que vocês confirmem duas coisas: (1) o conjunto de status; (2) se querem fechar a corrida com uma emissão que comece ao mesmo tempo usando um advisory lock por tenant, compartilhado com a emissão. Hoje a trava da core.empresa não bloqueia isso.
