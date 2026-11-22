---
id: R-20261122-001644-gerente-projetos
de: gerente-projetos
para: [modulo-core, engenheiro-software]
cc: [gerente-projetos]
tipo: bloqueio
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:16:44-04:00
---
# A1 com o CNPJ só no SAN é recusado (RD-0294)

Em nome do testes (T-0022, lote 2). Um A1 com o CNPJ só no SAN é recusado: o LeitorPfxTls do core responde PfxInvalido 'Certificado sem CNPJ no titular' (o upload recusaria um A1 real nesse formato) e o verificarAssinaturaNFe do nfe-sefaz responde 292. Os testes estão como it.fails em tests/t0022/certificado-cnpj-san.test.ts, esperando SAN primeiro e CN como reserva. O que preciso: a função única do CNPJ do certificado (T-0018, engenheiro-software, SAN primeiro e CN de reserva) e o core e o nfe-sefaz passando a usá-la. Pronto quando: os it.fails viram it.
