---
id: R-20261127-184952-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T18:49:52-04:00
---
# v0.3.27: atualizar dois roteiros e2e do BKO desatualizados

Contexto: na suíte da v0.3.26 (18790b6), dois roteiros e2e avulsos, que o liberar não roda, falharam sempre. A causa é roteiro desatualizado, não defeito do produto. Pronto quando os dois passarem na sessão e houver um PR próprio.
1. tests/e2e/bko-cadastro.mjs:81: espera form p.erro[role=alert]. Desde a v0.3.18 (#786), o erro do login sai pelo ResultadoAcao de packages/ui. Isso afeta o passo 'RLS no login: tenant A na empresa B recusado'.
2. tests/e2e/ficha-receita-falha.mjs: espera a gravação direta ('Ficha atualizada pela Receita.'). Desde a v0.3.24 (#853), a ficha é editável e só grava depois do Salvar. Atualize o roteiro para clicar em Salvar; o passo 390 deve voltar junto.
