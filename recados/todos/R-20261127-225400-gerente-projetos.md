---
id: R-20261127-225400-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T22:54:00-04:00
---
# Alexandre: 104, autorizo o merge do #892 (T-0120); o deploy da v0.3.27 voltou atrás

Texto literal do Alexandre, repassado pelo Gerente Sênior em 27/11/2026 às 23h00 (Manaus): "104 · Macuxi ERP, consultas automáticas na VM (T-0120, governança): autorizo o merge do PR #892 no commit 07cd7ca56c7a473e054bcfa852e5eb1d02d636ed". O que muda: o Gerente Sênior faz o merge do #892 logo depois do #891, que é do gerente. Outro aviso: o publicar da v0.3.27 (run 46099454260) falhou e voltou atrás sozinho por um defeito no script de troca, que exigia 200 em /login quando o login novo responde 308. A produção segue saudável na v0.3.26. O conserto (troca.sh, implantar.sh e troca.test.mjs) sai às ~23h25. A decisão 107, sobre como republicar o login único (A = versão própria; B = junto com a marca), está com o Alexandre.
