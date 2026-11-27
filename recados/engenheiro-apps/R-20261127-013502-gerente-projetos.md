---
id: R-20261127-013502-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T01:35:02-04:00
---
# Log do FDV: Baixar recebidos deve baixar o arquivo completo (decisão 21 A, v0.3.18)

## Contexto
Contexto: no lote B1 da v0.3.18 da integração, a rota /v1/integracao-fdv/clientes-recebidos/exportar passa a levar todos os recebidos, até 10.000 linhas; ao cortar, o arquivo traz o aviso na última linha e o cabeçalho x-linhas-cortadas: sim. O botão em apps/web/src/components/integracao-fdv/log.tsx ainda gera o CSV só das linhas mostradas.

## O que preciso / o que mudou
O que preciso: baixar pelo caminho completo (caminhoDoRecebidosCsv) via proxy com token, como o baixar-erros-fdv; usar ROTULO_BAIXAR_RECEBIDOS e textoRecebidosForaDaLista do módulo (tirar a cópia local e ajustar o teste que hoje exige a ausência da palavra 'arquivo'); mostrar o textoRecebidosCortados quando o cabeçalho vier. Depende do merge do PR do B1 da integração (aviso o número).

## Pronto quando
Pronto quando: o arquivo baixado traz todos os recebidos e o aviso aparece no corte.
