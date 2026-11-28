---
id: R-20261127-224258-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T22:42:58-04:00
---
# Alexandre: 101 (deploy v0.3.27), 90 B (chave S3 própria), 89 A (v0.3.29 como estava), 85 A (environment DIAGNOSTICO)

Textos literais do Alexandre, repassados pelo Gerente Sênior em 27/11/2026 às 22h35 (Manaus): "101 · Macuxi ERP, publicar a v0.3.27 (login único): aprovo deploy v0.3.27" · "90 · Macuxi ERP, chave do armazenamento de arquivos (S3): B (chave própria do ERP, só na pasta macuxierp/; eu crio a chave e gravo 2 secrets no environment PRODUCAO)" · "89 · Macuxi ERP, o que entra na v0.3.29: A (sai ~03h20 com a Config v4, os Usuários e a razão social/IE; as telas novas vão na v0.3.30, logo em seguida)" · "85 · Macuxi ERP, chaves SSH das consultas automáticas na VM (T-0120): A (environment novo DIAGNOSTICO, restrito ao main, com cópia das 4 chaves)". O que muda: (101) o PO comentou "aprovado v0.3.27" na #893, e o aprovar e o publicar seguem; (90) a T-0124 vai com a chave própria, por MACUXIERP_S3_CHAVE_ID e MACUXIERP_S3_SEGREDO no environment PRODUCAO, e sem os secrets a publicação segue com o Exportar desligado; (89) a v0.3.29 fica com T-0116, T-0117 e T-0113, e as T-0123 a T-0126 vão para a v0.3.30; (85) a T-0120 usa o environment DIAGNOSTICO, que o Alexandre cria e onde ele grava as 4 chaves, e o PR de governança dela vai para o autorizo dele quando estiver verde.
