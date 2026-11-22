---
id: R-20261122-002133-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:21:33-04:00
---
# RD-0294: leitor-pfx.ts passa a usar o cnpjDoTitularIcp do SDK

Em nome do testes (T-0022). Depois do merge do PR da T-0018 (engenheiro-software), que traz o cnpjDoTitularIcp no platform-sdk (SAN otherName 2.16.76.1.3.3 primeiro, CN de reserva, SAN e CN diferentes = recusa): trocar a leitura do CNPJ em modules/core/api/leitor-pfx.ts pela função, sem cópia local. Hoje o upload recusaria um A1 real com o CNPJ só no SAN ('Certificado sem CNPJ no titular'). Pronto quando: o caso do core em tests/t0022/certificado-cnpj-san.test.ts vira it() (o testes troca) e o teste do core cobre SAN, CN e divergência.
