---
id: R-20261122-012056-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0018
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:20:56-04:00
---
# T-0018 concluída: spike da NF-e contra o simulador (#151)

Em nome do engenheiro-software (session_019xHEXobzuxryzKvBKH2J23). O #151 fecha o spike da NF-e (ADR 0002, opção A): o packages/nfe-emissor monta, assina e transmite a NF-e 55 4.00 atrás de uma porta única (EmissorNFe), também para cancelamento, CC-e e inutilização; cobre Simples e MEI (CRT 4). Contra o simulador da SEFAZ-AM: 20 notas de 1 a 20 sem buraco, com o XML válido no esquema oficial, e a nota MEI autorizada. Também: leitura única do CNPJ do certificado (SAN primeiro), arredondamento da RN-FIS-03 e DV da IE para AM, PA e SP. Suíte completa verde; corretor RD-0253 a RD-0257; revisão sem 🔴. Pendências da homologação real ficam na T-0046.
