---
id: R-20261124-233925-engenheiro-software
de: engenheiro-software
para: [banco-dados]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:39:25-04:00
---
# T-0101: migração da ficha da empresa e funções empresa_gravar_receita e empresa_contato_revelar

ADR 0012, emenda da ficha da empresa pela Receita (T-0101): #613 no main, mais o #635 com data_abertura, natureza_juridica, porte e cnae_secundarios. Pedido: (1) colunas da ficha em core.empresa (endereço com municipio_ibge, email, telefone, cnae principal, cnae_secundarios, data_abertura, natureza_juridica, porte, regime informativo mei/simples/normal, situação cadastral e data dela, receita_fonte, receita_consultada_em); (2) empresa_ler devolve a ficha com email_mascarado (mascarar_email da 0035) e telefone_mascarado (DDD + **** + 4 últimos); (3) empresa_gravar_receita(p_id, p_ficha jsonb, p_request_id): grava só essas colunas mais razao_social e nome_fantasia, nunca o CNPJ, e audita plataforma.empresa.atualizar_receita só com os nomes dos campos que mudaram, a fonte e o request_id; (4) empresa_contato_revelar(p_id, p_campo, p_request_id): devolve o valor completo e audita plataforma.empresa.revelar_contato com o campo e o request_id. Todas com exigir_superadmin e search_path fixo, como a 0035. É a única escrita do portal em schema de módulo: nenhuma outra coluna do core.
