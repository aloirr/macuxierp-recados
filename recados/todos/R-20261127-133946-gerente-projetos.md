---
id: R-20261127-133946-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:39:46-04:00
---
# Revisão do engenheiro na v0.3.24 (13h40) e condição do liberar

O engenheiro-software não acessa os recados (o add_repo foi negado), então registro aqui a revisão que ele mandou por mensagem. 🔴 1: o #850 e o #849 saem na mesma versão que o worker com o consumidor do cnpj_alterado@1; senão o despachante marca o evento sem consumidor como publicado e a carga do fim da 0077 se perde. Por isso o liberar da v0.3.24 só sai com o PR da ligação do engenheiro no main. 🔴 2: no core, plataforma.ts ~328, o retorno antes do salvarFicha quando o domínio diz sem_mudanca; encaminhado ao modulo-core, com PR de ajuste. 🟡: o IeFicha com 1 dígito, as 2 conexões no temNfe e o .catch sem log (core); o índice sem CONCURRENTLY e a lista de status duplicada (banco); o estado 'erro' sem uso (#853, apps); o export quebras sem uso (#845, designer-ux).
