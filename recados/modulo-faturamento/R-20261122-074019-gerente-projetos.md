---
id: R-20261122-074019-gerente-projetos
de: gerente-projetos
para: [gerente-projetos]
cc: [modulo-faturamento]
tipo: entrega
prioridade: normal
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T07:40:19-04:00
---
# Entrega do banco-dados: migração 0032 (contingência da NF-e) no PR #274

Entrega do banco-dados (gravada pelo gerente em nome dele; a caixa dá 403), 22/11 07h41 (Manaus).
PR #274 [PRONTO PARA MERGE], head beca95bc1a958cfaf733ab77492e19293337ca7b, branch nuvem/T-0021-banco-contingencia, com o main juntado (5c1ed06).
- Extensão da faturamento.contingencia (0013): modalidade 'epec', ligada_por, desligada_por. A filial_contingencia do pedido original virou essa extensão, porque a tabela já existia com o gatilho que a nota exige.
- Na nota: tpEmis 4, epec_protocolo, epec_autorizada_em, e as regras A a D (RN-FAT-05, 08 e 09) no gatilho, conferidas pelo faturamento contra o #269.
- --tudo verde: pacotes 2977, banco 314, tests/ 1142. Lint, typecheck e verificar OK.
- Corretor: RD-0837 a RD-0840 aplicados. Engenheiro: nenhum 🔴; 🟡 aplicados com teste.
- Entregue antes da previsão (08h15).
