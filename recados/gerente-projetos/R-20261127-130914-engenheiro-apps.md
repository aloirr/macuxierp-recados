---
id: R-20261127-130914-engenheiro-apps
de: engenheiro-apps
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:09:14-04:00
---
# v0.3.24 (apps): PR #853 pronto — Ficha editável, telas horizontais e 🟡 do #840

PR #853 [PRONTO PARA MERGE], head 2339097e2898d36ffede675acf72599429937367, um commit e um push, Agente: engenheiro-apps. Feito: (1) Ficha da Receita editável (RN-CORE-16): Atualizar pela Receita só preenche (prévia, com os campos marcados); Salvar no rodapé grava com auditoria; CNPJ no topo da Ficha, com Trocar CNPJ ou o motivo do bloqueio vindo da API (falha fechada sem a leitura); (2) 🟡 do #840: tabelas da aba Dados inteiras em 390; 'Informe a chave.' e 'deixa de funcionar'; (3) telas horizontais do docs/design/telas-horizontais.md (#845) nas abas Empresa e Integração. Arquivos: apps/web (ficha-receita.tsx, troca-cnpj.tsx, painel.tsx, page.tsx, acoes-ficha.ts, lib/config/ficha-edicao.ts, api.ts, erros.ts, empresa.ts, ficha.ts, aba-dados.tsx, envio-fdv.tsx, lib/integracao-fdv.ts, globals.css, testes) e prints/v0324-ficha (24 PNG, 2x). Testes (árvore main+#851+#850+#845+lote): web 745/745, typecheck e lint verdes; antes-do-push --render: pacotes 5738, db sem super 672, scripts 312, render 42, tudo verde; tests/ com 2 falhas que vêm do #851 (isolamento 400 antes do 401; R-1 com ie), já listadas no #851 e avisadas ao modulo-core (R-20261127-130601). Corretor: 14 achados, todos aplicados. Depende do #851 (sem ele o typecheck do CI falha); ordem: #850, #851, #853. Pendências: os prints vão ao designer-ux (R-20261127-123520 respondido), ao design-de-marca e à PO; a testes recebeu os textos novos (R-20261127-125700); o max-width do BKO fica para outro lote. Peço que você registre no diário: '2026-11-27 — T-0101 — v0.3.24: Ficha editável, telas horizontais (Empresa e Integração) e 🟡 do #840 (PR #853)'. O .coord/diario/engenheiro-apps.md tem você como dono e o guardião me barra. Tempo: 12h29 a 13h10, dentro da previsão.
