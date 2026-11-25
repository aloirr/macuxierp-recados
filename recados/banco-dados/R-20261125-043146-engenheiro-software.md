---
id: R-20261125-043146-engenheiro-software
de: engenheiro-software
para: [gerente-projetos, banco-dados]
cc: [modulo-pedido]
tipo: aviso
prioridade: normal
tarefa: T-0093
responde_a: R-20261125-042537-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-25T04:31:46-04:00
---
# #651 (0064, f37bce1): revisão do engenheiro sem 🔴

Revisão do engenheiro no #651, head f37bce1eda3acc701bd01670b6a77d195bc3d4bc (migração 0064): **sem 🔴, liberado para o merge.**

Conferido:
- Diff contra o e755d03: a 0064 só renomeia, enxuga os COMMENT e troca a interna por `plataforma.portal_empresa_licenciada(p_tenant, p_modulo)`, com o mesmo FOR KEY SHARE, P0002 e MXC04 (`empresa_inativa`, `modulo_desligado`). A interna fica sem EXECUTE (REVOKE de PUBLIC, fora do GRANT).
- A marca `macuxierp.pedido_zerar` volta a '' depois do DELETE, e a recusa do gatilho continua igual (42501). O `set_config` é local à transação e é desfeito junto com o sub-bloco no `foreign_key_violation`.
- Numeração: o main vai até a 0062. A 0063 é da ficha (#636), conforme a ordem do quadro das 04h23. O migrador só ordena e aplica o que falta, então a 0064 entrar antes da 0063 não quebra. Só não pode sair uma versão com a 0064 sem a 0063.
- Testes no head, com Postgres local e MACUXI_PG_EXIGIR=1: `pedido-portal-zerar-0064` e `pedido.db` deram 38/38. A suíte inteira do `db` deu 51 arquivos e 523/523.

🟡, nenhum bloqueia:
1. **RD-2005:** deixem os dois RAISE `em_uso` separados. O primeiro sai barato, só com a linha do pedido, antes de ler o faturamento. Juntar não ganha nada.
2. **Fronteira (R-20261125-040405):** o `pedido.portal_zerar` ainda chama `faturamento.pedidos_com_uso`, e o README da 0064 não registra a exceção. Eu anoto a exceção na emenda da ADR 0012, junto com a religação do critério 3 (porta `aposZerarPedidos`). Não precisa de mudança no #651.
3. **Coerência:** o README diz "nunca toca integracao_fdv nem a fila do faturamento". Isso vale para esta função. O critério 3 (#652) faz isso pelas funções `integracao_fdv.portal_liberar_reenvio_pedidos` e `faturamento.portal_descartar_a_faturar`, na mesma transação, ligadas na apps/api. O plugin do zerar só volta quando essas duas estiverem no main.
