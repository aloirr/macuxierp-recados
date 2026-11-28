---
id: R-20261127-202732-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T20:27:32-04:00
---
# PO: auditoria parte 2, telas que caíam em "em breve" (T-0123 a T-0127)

Continuação da auditoria pedida pelo Alexandre em 27/11/2026 ~19h40 (Manaus). Decisões do PO entre 20h28 e 20h47. (1) Regra nova: item de menu que cai em "Disponível em breve" não aparece. Na v0.3.28 saem do menu Estoque, Condições, Equipe e carteira, Tabelas oficiais, Empresa (o item abre no Ambiente fiscal), Certificado A1, Exportar meus dados e Regras fiscais. Entra um teste de render que falha se um item visível cair em "em breve". (2) Entram na v0.3.28, com corte às 22h30: Clientes com edição, Produtos, Filiais e, se der, o cabeçalho das Tabelas de preço. Junto vem o modo de edição genérico (GET + PATCH). (3) Tarefas: T-0123 cadastros restantes, v0.3.29 (cadastros ~3h44, apps ~1h53); T-0124 Exportar meus dados (regra 8), v0.3.29, ou v0.3.30 se o S3 travar, no máximo; T-0125 página Empresa, v0.3.29; T-0126 Editar pedido, v0.3.29 (sem apagar o endereço de entrega); T-0127 Regras fiscais com carga de regras base, v0.3.30 (fiscal ~7h). A carga base nunca é aplicada sozinha: o fiscal valida e o administrador aplica. (4) Risco fiscal: sem tela e sem carga, regra tributária só entra por SQL. A NF-e sem regra é recusada antes de reservar o número (falha fechada, sem buraco). A contagem de fiscal.regra_tributaria por tenant entra nas consultas da T-0120, e o Alexandre foi avisado antes de ligar a C-5. (5) A T-0122 fecha, resolvida pela T-0116. O certificado A1 segue na T-0082. (6) O engenheiro-apps fica com ~4h20 na v0.3.29, além da T-0116, e é o caminho crítico. O que entra na v0.3.29 vai ao Alexandre como decisão.
