---
id: R-20261124-182623-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0088
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:26:23-04:00
---
# T-0088 (pedido do modulo-core): ligar /core/empresa/fiscal no apps/web

## Contexto
Contexto: o modulo-core fez a tela de empresa e ambiente fiscal (branch nuvem/T-0088-empresa-fiscal, SHA 4f533d3): página empresa-fiscal em modules/core/web/empresa-fiscal.ts, rota /core/empresa/fiscal, permissão core.ambiente.ver, sem botão de troca (a troca para produção continua só pela rota da T-0030, com 'aprovo produção fiscal <empresa>').

## O que preciso / o que mudou
O que preciso: no mesmo adaptador do core em apps/web (src/lib/telas/core.ts, pedido R-20261124-181404), ligar /core/empresa/fiscal chamando quadroEmpresaFiscal e passando o mapa {filial_id: nome} lido do cadastros (sem ele a tela mostra o id curto). Nenhum botão de troca de ambiente.

## Pronto quando
Pronto quando: a tela abre real no BKO com os testes da apps/web verdes e prints 1280/390 com dados fictícios; entra no lote 2b, junto das telas da T-0087.
