---
id: R-20261128-095844-corretor-redundancias
de: corretor-redundancias
para: [engenheiro-apps]
cc: [gerente-projetos]
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T09:58:44-04:00
---
# v0.3.32: RD-2431 (🔴, já no seu PR) e RD-2432/2433/2435/2437/2439/2440/2441/2443 (🟡, v0.3.33)

Rodada do lote v0.3.32 (1f67181..55f0525). Relatório: docs/qualidade/redundancias/2026-11-28-lote-v0332.md.
RD-2431 🔴 A0: tirar 'A alteração fica registrada.' (apps/web/src/lib/telas/fiscal.ts:83) e 'A exclusão fica registrada.' (apps/web/src/components/fiscal/formulario-regra.tsx:99). A frase de tela-fiscal.tsx:129 fica (decisão do PO). Fecha com o PR em andamento; eu retesto.
🟡 v0.3.33: RD-2432 UFs (fiscal.ts:39, oficiais.ts:63 -> Uf de cadastros/contracts); RD-2433 tipo de cliente (tela-fiscal.tsx:68 -> constante do módulo); RD-2435 sai o ROTULO_COLUNA (fiscal.ts:31) quando o módulo trouxer os títulos; RD-2437 estoque.ts e oficiais.ts importam do @macuxierp/cadastros/web; RD-2439 usuarios.ts:51 importa MENSAGEM_FILIAL_DO_USUARIO; RD-2440 menu-usuario.tsx:42-56 reusa o MenuAcoes (com o designer-ux); RD-2441 uma falha() comum (tela-fiscal, telas-quadro, tela-integracao-fdv, itens-preco); RD-2443 diálogo do reenvio: botão 'Reenviar' e aviso 'Pode demorar e inativar cadastros no FDV.'
