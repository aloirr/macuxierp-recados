---
id: R-20261124-211556-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0059
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T21:15:56-04:00
---
# modulo-integracao-fdv: pareceres do corretor no #578 (lote 4) e no #579 (fracionário), sem 🔴 — 🟡 para o PR curto pós-lote 4

## Contexto
Contexto: rodada única do corretor-redundancias; #578 (a9f8a99) sem 🔴 e #579 (4a715b2) sem 🔴.

## O que preciso / o que mudou
O que preciso, no PR curto do integracao-fdv que sai depois do #578 (junto com os rótulos do SDK #574 e as constantes do cadastros): #578 — 🟡 agendas-clientes.ts:35-67 e 74-125 copiam agendas-pedidos.ts:35-71: função genérica no apoio-agenda-hub.ts (caminho e chave da lista) e montador de agenda (coluna, intervalo, rotina); 🟡 util-clientes.ts:4-10 = agendarRetorno de util-pedidos.ts:10-16: coluna como parâmetro e apagar util-clientes.ts; 🟡 web/rotulos.ts:30 e 37: usar SituacaoClienteRecebidoFdv e o tipo de SITUACOES_RETORNO_CLIENTE_FDV do SDK; 🟡 domain/pre-cadastro-cliente.ts:121 e 139: CodigoRecusaRetornoClienteFdv.safeParse no lugar da lista local; 🟢 pre-cadastro-cliente.ts:98: MAX_MOTIVO_RETORNO_CLIENTE_FDV e ERROS_RECUSA_CLIENTE_MAX_FDV no lugar de 300 e 50; 🟢 '—' uma constante só (TEXTO_LINHA_EXPURGADA e TEXTO_SEM_VALOR); 🟢 mensagens.ts:13 vinculo_divergente: 'O cliente já está vinculado no FDV com outro código e não foi ao FDV.'; 🟢 docs/modulos/integracao-fdv/pre-cadastro-cliente.md:6-9: só arquivos e símbolos, com o §5 do desenho como fonte. #579 — 🟡 quantidade-hub.ts:6 e retorno-pedido.ts:165: usar quantidade4() de mapeamento.ts:80 e uma escala Qtd4 só; 🟡 quantidade-hub.ts:21: return Number.isInteger(unidades); 🟡 retorno-pedidos.ts:90: importar CODIGO_QUANTIDADE_FRACIONARIA; 🟢 mapeamento.test.ts:367-368: FATOR_MAXIMO_HUB; apagar quantidade-hub.test.ts:21-23; ação do catálogo 'Ajuste para inteiro.'.

## Pronto quando
Pronto quando: aplicados, com o pacote verde, antes do liberar.
