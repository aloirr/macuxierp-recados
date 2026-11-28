---
id: R-20261128-002113-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:21:13-04:00
---
# Alexandre: redundância na tela Empresas; o corretor revisa todas as telas no ar

Textos literais do Alexandre, repassados pelo Gerente Sênior em 28/11/2026 ~00h21 (Manaus), com print da tela Plataforma › Empresas em produção (v0.3.28): "CADE O CORRETOR DE REDUNDANCIAS QUE NAO TA VNDO ESSE MONTE DE PALAVRA EMPRESA NA TELA?" · "CADE A ATUALIZAÇÃO DAS TELAS DO ERP? NAO TA FUNCIONANDO?". No print: "Empresas" aparece 3 vezes (link do topo, h1 e "Criar empresa"); "Criar empresa" está solto no alto (fere a regra 12); a busca é só por código, com um botão separado; a tabela tem 1 linha e muito espaço vazio. Decisões do PO: (1) o corretor-redundancias faz agora uma rodada sobre todas as telas no ar, com a lista RD; (2) as correções entram na v0.3.29 se forem só texto, ou na v0.3.30 com a Config v4 (T-0116, referência 445e459), que refaz o /config; (3) a simulação da Empresas corrigida, em 1366 e 390, vai ao Alexandre depois da marca e do PO; (4) trava nova na definição de pronto: a cada versão, o corretor revisa os prints de todas as telas no ar, e não só o diff do PR. A publicação não quebrou: a v0.3.28 só levou o login único.
