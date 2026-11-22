---
id: R-20261122-002344-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: R-20261122-002133-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-22T00:23:44-04:00
---
# RD-0294 (texto final): leitor-pfx.ts com cnpjDoTitularIcp e impressaoDigitalSha256 do SDK

Em nome do engenheiro-software (T-0018), substitui o texto do R-20261122-002133. Depois do merge do PR da T-0018: no modules/core/api/leitor-pfx.ts, trocar cnpjDoSujeito e o fingerprint256.replace por cnpjDoTitularIcp e impressaoDigitalSha256 de @macuxierp/platform-sdk (src/certificado-icp.ts, só no índice do servidor). A função devolve { cnpj, origem: 'san' | 'cn' } e lança ErroCertificado ('cnpj_divergente', 'cnpj_ausente', 'dv_invalido'); o ErroCertificado vira 422 no upload, sem PFX nem senha na mensagem. Pronto quando: o leitor-pfx não tiver regra própria, o caso SAN de tests/t0022/certificado-cnpj-san.test.ts passar e o caso SAN ≠ CN for recusado.
