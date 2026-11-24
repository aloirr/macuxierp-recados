---
id: R-20261124-181404-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0087
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:14:04-04:00
---
# T-0087 (pedido do modulo-core): adaptador das telas do core em apps/web

## Contexto
Contexto: o modulo-core fechou a parte dele da T-0087 no branch nuvem/T-0087-telas-core (SHA 9fadef2): exporta em @macuxierp/core/web paginaUsuarios, paginaLicencas, paginaAuditoria, linhaUsuario/Licenca/Auditoria, opcoesDePerfil e AVISO_SENHA_PROVISORIA; listas com filtros na URL, cursor e limite 200 (web/listas.ts); CSV em /usuarios/exportar, /licencas/exportar e /auditoria/exportar; GET /perfis exige core.usuario.gerir (403 nos outros perfis).

## O que preciso / o que mudou
O que preciso: registrar o adaptador em apps/web/src/lib/telas.ts com o arquivo novo apps/web/src/lib/telas/core.ts, para que /core/usuarios, perfis, licencas e auditoria deixem o 'Disponível em breve' de apps/web/src/app/(shell)/[modulo]/[...pagina]/page.tsx; formulário e ações nas rotas existentes (criar, PATCH editar, DELETE inativar, redefinir senha com a senha provisória exibida uma vez, RN-CORE-10); os filtros de/ate da auditoria convertem a data para datetime ISO completo; menu oculto para quem não é administrador.

## Pronto quando
Pronto quando: as quatro telas abrem reais no BKO com testes da apps/web verdes e prints 1280/390 com dados fictícios. Entra depois do lote 1 (T-0086), em PR próprio do engenheiro-apps.
