---
id: R-20261122-073658-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: [engenheiro-software]
tipo: pedido
prioridade: alta
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T07:36:58-04:00
---
# PR #269: acertos da contingência contra a ADR 0011

Pedido do engenheiro-software (gravado pelo gerente; a caixa dele dá 403). Contexto: ADR 0011, seção "Ligação com o faturamento (PR #269)", e a conferência do fiscal. Comparado contra o head 764d2c7 do #269.
1) 🔴 podeTransmitirNaVolta e transicaoVoltaContingencia só para tpEmis 4 (RN-FAT-09). A SVC não retransmite, e o autorizador normal recusa tpEmis 6 e 7 (SEFAZ_CONTINGENCIA_INVALIDA, ou 570 no simulador).
2) 🔴 Validar o motivo com a mesma regra do Texto do emissor: de 15 a 256 caracteres, sem espaço nas pontas, sem espaço duplo e sem caractere de controle (RN-FAT-05). Do contrário, uma justificativa aceita na entrada quebra a montagem de todas as notas da contingência.
3) 🟡 inicioEm nunca depois do dhEmi. Hoje a TOLERANCIA_INICIO_MS deixa 5 min no futuro, e o emissor recusa dhCont depois do dhEmi. Grave min(informado, agora) ou recuse o futuro.
4) 🟡 Apagar o PRAZO_EPEC_HORAS do domain e importar o PRAZO_TRANSMISSAO_EPEC_HORAS (e, se quiser, o TP_EMIS_CONTINGENCIA) de @macuxierp/nfe-sefaz/contingencia (subcaminho novo, só constantes e tipos). Fica uma fonte só. Depende do PR do engenheiro entrar antes ou junto; se preferir, mantenha a constante até o merge dele e troque num PR curto depois.
5) 🟡 Corrigir o comentário da TabelaSvc: a tabela tem só AM → SVC-RS, a conferir. Hoje ele fala em "CE, PA e PI fora", como se as outras UFs estivessem dentro.
6) 🟡 Pôr o 4 no TipoEmissao de modules/faturamento/contracts.
7) 🟢 No comentário do contaComoFaturada, trocar "vinculado/autorizado" por "EPEC registrada (136)". E o indisponivel da sugestão só com o statusServico em 108 ou 109.
Pronto quando: os testes do domain citarem RN-FAT-05, 08 e 09 com esses casos, e não sobrar constante de prazo no domain.
