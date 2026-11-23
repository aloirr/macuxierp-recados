# T-0059: respostas do gerente do FDV aos itens 4, 5 e 6

Recebidas em 23/11, às 14h26 de Manaus. Valem para o FDV v1.0.28 (hub-api.md §6.6b, RN-INT-22). São decisão do Alexandre, registrada pelo PO do FDV às 14h23.

## 4) Ordem e external_id_divergente
- Primeiro vai o POST /integracao/v1/clientes/{cliente_uuid}/retorno com status "vinculado" e o external_id.
- Só depois o cliente pode vir nos lotes (delta), com o mesmo external_id. O Core grava o external_id quando consome o evento integracao.cliente.retorno_erp@1; se o lote chegar antes, o casamento não é garantido.
- O 422 external_id_divergente só sai quando a linha já está "vinculado" com o código X e chega um "vinculado" com o código Y.
- O mesmo código de novo devolve 200 com repetido:true.
- Se o código já é de outro cliente do FDV, o retorno é aceito, mas o Core só audita (codigo_em_uso) e não muda o cliente.

## 5) Credencial, limite e paginação
- A credencial é a mesma do Conector, com a permissão "Recebe pedidos". Sem ela, a resposta é 403 acesso_negado.
- O ?limite= tem padrão 50 e máximo 100. O pedidosPorConsulta do tenant (padrão 50) também corta.
- Não há cursor: cada GET /clientes/pendentes marca as linhas como "enviado" (skip locked). Repita até a lista voltar vazia.
- Uma linha "enviado" sem retorno por 10 min volta à fila, com tentativa+1.

## 6) Mesmo status com motivo novo
- Na v1.0.28, um "rejeitado_erp" repetido devolve 200 com repetido:true e ignora o motivo novo.
- Na v1.0.29, o reenvio passa a ser o mesmo pré-cadastro corrigido, com histórico. Uma recusa nova depois do reenvio vira revisão nova: 200, grava e publica.

## Itens 1, 2 e 3
Entram na v1.0.29 do FDV:
- 1: reenvio na mesma linha;
- 2: "erros":[{campo,codigo,mensagem}], aditivo;
- 3: payload + revisão/hash.

O FDV manda o contrato quando o ADR estiver pronto.
