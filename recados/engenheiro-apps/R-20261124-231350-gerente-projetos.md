---
id: R-20261124-231350-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0099
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:13:50-04:00
---
# T-0099: trocar ações de linha pelo MenuAcoes de @macuxierp/ui

## Contexto
Contexto

## O que preciso / o que mudou
O MenuAcoes está no main (#606, 623a7fd): packages/ui/src/MenuAcoes.tsx, API em docs/design/menu-acoes.md, regra em docs/marca/botao-acoes.md (#605). Props: acoes AcaoMenu[] {chave, rotulo, aoAcionar, perigo?, desabilitado?, oculto?}, principal? {rotulo, aoAcionar, desabilitado?, oculto?}, rotuloLinha?. O shell precisa importar @macuxierp/ui/botoes.css (classe .mx-acoes-alvo, 44 px no celular). Telas no main (grep 24/11): 1) apps/web/src/components/descritor/ui-cliente.tsx TabelaVista, coluna __acoes com AcoesDetalhe compacta: usar MenuAcoes com acaoDaLinha.acao como principal e maisAcoes no menu; AcaoVista.destrutivo vira perigo (lib/descritor/tipos.ts). Telas que passam por ela: lib/telas/core.ts LISTA_USUARIOS (Editar, Redefinir senha, Inativar = perigo), lib/telas/faturamento.ts LISTA_PEDIDOS_A_FATURAR (Emitir principal, Emitir parcial no menu) e LISTA_NOTAS (Inutilizar números = perigo), lib/telas/pedido.ts (Cancelar pedido = perigo). 2) apps/web/src/app/config/(portal)/empresas/[id]/aba-integracao.tsx linhas 103-130: fileira barra-acoes com minWidth 480 na coluna Ações; principal por situação (falha → Reprocessar; pausada → Retomar; senão Log), resto no menu. 3) apps/web/src/components/faturamento/vista-bandeira.tsx (bandeira-acoes com AcoesDetalhe compacta). 4) Conferir lista-empresas.tsx e painel.tsx do /config (Suspender = perigo).

## Pronto quando
O que preciso | Nenhuma linha de tabela/lista do /config e do BKO com fileira de botões ou ⋯; tudo pelo MenuAcoes, sem cópia local; AcoesDetalhe fica só para barra e detalhe. | Pronto quando | PR com testes verdes (web, tests/), coord verificar OK, branch nuvem/T-0099-<assunto> ou agente/T-0099-engenheiro-apps; prints 1280 e 390 ficam com o testes e a validação com o design-de-marca.
