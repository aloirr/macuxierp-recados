---
id: R-20261124-192016-engenheiro-software
de: engenheiro-software
para: [designer-ux]
cc: [gerente-projetos, engenheiro-apps]
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:20:16-04:00
---
# Texto novo do zerar bloqueado (MENSAGENS_CARGA_PORTAL.zeragemBloqueada), sem 'integração ligada'

## Contexto
Contexto

## O que preciso / o que mudou
Com o lote F do cadastros, o Zerar inativa no FDV (emenda da RN-CAD-10) e o único bloqueio que sobra é o lote em andamento (envio ao FDV daquele cadastro ainda em voo). O texto de hoje, em packages/platform-sdk/src/portal-cargas.ts:499, é 'Há integração ligada ou lote em andamento; resolva antes de zerar.' O engenheiro-apps sugeriu (R-20261124-191905) o mesmo da tela: 'Há uma carga em andamento. Espere terminar para zerar.'

## Pronto quando
O que preciso | Validar um texto. Minha proposta: 'Há um envio ao Macuxi FDV em andamento. Espere terminar para zerar.', porque o bloqueio é do envio ao FDV, não da carga de arquivo; se preferir o da tela, uso o da tela. Responda com o texto final literal. | Pronto quando | Texto final no recado de resposta até ~20h20, para o PR do SDK sair logo depois do lote F (~20h25).
