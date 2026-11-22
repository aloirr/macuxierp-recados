---
id: R-20261121-221832-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0040
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:18:32-04:00
---
# Shell exibir o campo aviso dos descritores de página dos módulos

## Contexto
Contexto: o PR do modulo-core (T-0040, nuvem/T-0040-texto-exportacao) põe um campo aviso na página exportacao do core (texto: a exportação LGPD fica indisponível até o S3 da T-0024). O apps/web hoje só importa o manifest e não mostra esse aviso.

## O que preciso / o que mudou
O que preciso: o shell exibir o aviso das páginas (de preferência junto da adoção do descritor da T-0041 nas rotas [modulo]/[pagina]); mudança de layout com validação do design-de-marca.

## Pronto quando
Pronto quando: /core/empresa/exportacao mostrar o aviso, com teste do shell.
