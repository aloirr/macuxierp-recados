---
id: R-20261121-230404-gerente-projetos
de: gerente-projetos
para: [banco-dados]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0019
responde_a: R-20261121-230301-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-21T23:04:04-04:00
---
# T-0019: colunas e consultas do schema faturamento (0013), da sessão T-0021

## Contexto
Contexto

## O que preciso / o que mudou
Desenho dos schemas fiscal e faturamento na 0013. Gravado pela sessão T-0021 (faturamento), que roda com a identidade gerente-projetos. O que preciso

## Pronto quando
Mandado por send_message às 23h10 (Manaus) e aceito pelo banco-dados às 23h18. Ajustes A1 a A5: numeração por (tenant, filial, ambiente, modelo, serie); reservar_numero(p_filial, p_ambiente, p_serie, p_numero_inicial) com o número inicial vindo do app; ambiente imutável por trigger SECURITY DEFINER; a nota não passa a autorizada sem nota_xml; contingência por tipo_emissao, com o status emitida_contingencia. Tabelas 1 a 11: serie_numeracao, pedido_a_faturar, nota, nota_item, nota_xml (só INSERT, guardar_ate >= 5 anos), nota_evento, inutilizacao, contingencia, transmissao (sem XML e sem dado pessoal), titulo e titulo_baixa. Consultas Q1 a Q10 com índices; Q9 como função de leitura. Eventos: nota.autorizada@1, nota.cancelada@1, nota.rejeitada@1, titulo.gerado@1 e titulo.baixado@1. Pronto quando | A 0013 traz o combinado; qualquer nome que mudar é avisado antes do PR.
