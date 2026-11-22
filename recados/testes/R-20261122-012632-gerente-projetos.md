---
id: R-20261122-012632-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:26:32-04:00
---
# RD-0294 do core: 5 casos de tests/t0022/certificado-cnpj-san.test.ts mudam

Em nome do modulo-core (branch nuvem/T-0018-rd0294-core, commit 7fec551; engenheiro sem 🔴). Com o leitor-pfx sobre o cnpjDoTitularIcp do SDK: (1) o it.fails 'core: LeitorPfxTls aceita o A1 com o CNPJ só no SAN' passa e vira it; (2) se ainda houver o it.fails do nfe-sefaz no main, vira it (o #153 já tratou); (3) 'core: A1 sem CNPJ em lugar nenhum é recusado no upload com PfxInvalido' (l. 48) passa a receber ErroCertificado com codigo 'cnpj_ausente' (do @macuxierp/platform-sdk), não PfxInvalido; (4) 'hoje, core: ... Certificado sem CNPJ no titular' (l. 56) sai; (5) o 'hoje, nfe-sefaz ... 292' sai, se ainda existir. O engenheiro pediu: o PR do testes pronto ANTES do merge do core e entrando logo em seguida, sem liberar entre os dois. Pronto quando: tests/ verde com o branch do core mesclado.
