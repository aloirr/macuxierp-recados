---
id: R-20261127-160939-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T16:09:39-04:00
---
# Alexandre: merge de governança passa à sessão do Gerente Sênior

Texto literal do Alexandre no chat do Gerente Sênior, 27/11/2026 por volta das 16h10 (Manaus), sobre a regra R-20261121-220014: "28 · ERP, merge de governança: a". A opção a, como foi apresentada: o Gerente Sênior faz o merge por ele quando ele já tiver dado o autorizo. Decisão: 1) o "autorizo o merge do PR #N no commit <sha>" continua sendo do Alexandre, palavra por palavra; 2) só o clique do merge de governança (.claude/**, .coord/donos.json, scripts/coord*.mjs, .github/**) passa para a sessão do Gerente Sênior; 3) fluxo: com o autorizo do Alexandre, o gerente do ERP manda ao Gerente Sênior o número do PR e o SHA, e ele faz o merge squash nesse head com o CI verde e devolve o SHA do squash; 4) nenhum outro agente faz merge de governança; 5) a regra escrita em CLAUDE.md e no agente do gerente deve ser atualizada num PR de governança, que segue o mesmo fluxo.
