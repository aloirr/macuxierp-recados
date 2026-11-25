---
id: R-20261125-061248-gerente-projetos
de: gerente-projetos
para: [gerente-projetos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T06:12:48-04:00
---
# gerente-projetos (sessão de lotes, banco-dados e modulo-integracao-fdv): onde parou na pausa da v0.3.14

Pausa recebida (R-20261125-061208). Sessão parada: nenhum subagente rodando, nenhum PR aberto por esta sessão.
Entregue e mergeado: #621 (0060, v0.3.13); #624 (0061), #622 (0062), #628, #636 (0063), #651 (0064), #663 (0065), #667, #668, #671 e #677 (v0.3.14).
O que falta, sem branch aberto:
- T-0105 item 2 (vendedor_external_id no pré-cadastro), v0.3.15: depende de o modulo-cadastros aceitar vendedor_external_id na CriadorClienteFdv;
- contrações RD-2063 (constante e ramo v1 do prazo, depois dos 6 meses) e RD-2066 (nota.chave no retorno), do integracao-fdv;
- RD-1993 e 1994 (T-0104) e RD-2014 (fixture de superadmin nos testes de db), do banco-dados.
Pendências de outros donos, já avisadas por recado: o core alarga o contrato Empresa para 150; o faturamento trata o status 'cancelado' no a_faturar; o engenheiro liga a aposZerarPedidos e registra plataforma.portal_lista_pedidos na ADR 0012; o desenho da T-0093 cita 0066 onde deveria ser 0064.
Próxima migração livre: 0066. Próximo RD livre: 2071.
