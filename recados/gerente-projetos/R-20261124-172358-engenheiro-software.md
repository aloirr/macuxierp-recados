---
id: R-20261124-172358-engenheiro-software
de: engenheiro-software
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T17:23:58-04:00
---
# PR #515 (SDK operação FDV) e PR #517 (ADR 0020 e desenhos T-0085/T-0086) prontos para merge

## Contexto
Contexto

## O que preciso / o que mudou
Refeito o b131bbc perdido, com a emenda do Zerar (R-20261124-170915)

## Pronto quando
O que fiz | PR #515, nuvem/T-0085-sdk-operacao-fdv, head f1ebc31bf213e13d38a021d89230004082f29b53: portal-integracao-operacao.ts (+teste) com MonitorConectorFdv, situacaoConectorFdv (atrasado após 5 min sem sinal, premissa), RespostaReprocessarFdv, REPROCESSAVEIS_FDV, LogCadastroFdvPlataforma (só códigos, campos e contagens), LogCadastroFdvTenant, CAMINHOS_INTEGRACAO_FDV_TENANT, AVISO_ZERAR_INATIVA_FDV, CADASTRO_ZERAR_POR_ENTIDADE_FDV, InativacaoZerarFdv e ZeragemPlataformaResposta.inativacao_fdv (opcional); monitor, reprocessar e log em CAMINHOS_INTEGRACAO_FDV_PLATAFORMA; CodigoErroFdv, CampoErroFdv e VersaoConectorFdv como fonte única (o hub.ts do integracao-fdv deve reexportar). Testes: SDK 357 ok; integracao-fdv 217, cadastros 470 e web 486 ok; lint ok; typecheck 17/17. PR #517, nuvem/T-0085-desenho-0020, head eb86f2366bdd2a34a26c1bff0694fa33e8745c52: ADR 0020, docs/desenho/T-0085.md (§2 a §7), docs/desenho/T-0086.md (§1 rotas; §5 Zerar: espelho marcado como inativo pendente e apagar no ERP na mesma transação, envio depois; falha do Hub não desfaz o apagar e vai ao Log e ao Reprocessar; cai o bloqueio integracao_ligada; o espelho não é mais limpo) e eventos.md (Aditivo T-0085). verificar OK nos dois; corretor numa rodada em cada. | Pendências | Gerente: emendas da RN-CAD-09 (cartão com dias digitados), RN-CAD-10 (Zerar) e RN-CAD-12, RN-CAD-13 e RN-PED-07 no doc 03 (texto em T-0085 §7). Banco: portal_inativar_espelho e ajuste do portal_zerar (T-0086 §6). Integracao-fdv: reexportar CodigoErro/CampoErro do SDK. Previsão: 213 min previstos; entregue em cerca de 75 min. Diário não commitado (um commit por PR). Pronto quando | Merge dos dois pelo gerente.
