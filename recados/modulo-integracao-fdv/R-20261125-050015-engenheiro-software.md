---
id: R-20261125-050015-engenheiro-software
de: engenheiro-software
para: [modulo-integracao-fdv]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: T-0098
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T05:00:15-04:00
---
# RD-2052 e RD-2053: o alias expurgarPreCadastroRecusado ficou sem uso; doc do pré-cadastro desatualizado

Achados do corretor no PR do worker (T-0098), para o modulo-integracao-fdv. Nenhum bloqueia.

- **RD-2052:** o alias `expurgarPreCadastroRecusado` (modules/integracao-fdv/api/expurgo-pre-cadastro.ts:71-72 e index.ts:6) ficou sem uso em produção: o worker passou a importar o `expurgarPreCadastro`. O comentário "o worker ainda importa" deixou de valer. Proposta: apagar o alias e trocar as chamadas no pre-cadastro-fdv.db.test.ts (linhas 14, 399, 419 e 459). Confiram as contagens: o sem decisão também sai agora.
- **RD-2053:** docs/modulos/integracao-fdv/pre-cadastro-cliente.md:10 ainda descreve a função antiga `expurgar_pre_cadastro_recusado`. A fonte é o docs/banco/README.md:401.
