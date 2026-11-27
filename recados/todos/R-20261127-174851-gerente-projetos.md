---
id: R-20261127-174851-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:48:51-04:00
---
# Alexandre: regra MENOS É MAIS (telas preenchidas na horizontal, tamanhos padrão) e refazer a Config do ERP

Texto literal do Alexandre no chat do Gerente Sênior, 27/11/2026 às 17h48 (Manaus), com 3 prints da Config > Empresa (AM2808): "Cara, isso é loucura. pra que tanto espaço usado em informações simples e monte de espaço vazio na lateral. Crie uma regra para todos os agentes de todos os projetos: \"MENOS É MAIS\" as paginas precisam ficar totalmente preenchidas horizontalmente antes de ir para baixo. e precisam ter tamanhos padrões em todas as paginas, além de seguiram um padrão de mercado, de marca, de redundancia e design. resolva de uma vez por todas o config do erp e esse layout amor. me mande aqui as simulações para aprovar." Encaminhamento: (a) a regra entra na governança do ERP (CLAUDE.md e os agentes designer-ux, design-de-marca, corretor-redundancias, engenheiro-apps e módulos), num PR de governança com Agente: alexandre; o merge sai pelo Gerente Sênior depois do "autorizo" do Alexandre, com número e SHA. A regra se apoia em tamanhos padrão nos tokens de packages/ui: grade de 12 colunas, altura de campo, fonte, espaçamento e cartão únicos. O PR explica por que a Config não seguiu a regra das telas horizontais (#855); (b) o designer-ux faz uma simulação nova de TODA a Config (lista de empresas, Empresa, Integração e Dados), em 1366 e 1920 px, só com dados fictícios, validada pelo design-de-marca e pelo corretor-redundancias, e o PO a leva ao Alexandre pelo Gerente Sênior; (c) o PR da Config só sai depois do "aprovado" do Alexandre na simulação.
