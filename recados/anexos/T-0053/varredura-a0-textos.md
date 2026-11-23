# Varredura da regra A0 (só o que o usuário usa para agir) — 23/11, 10h45 (Manaus)

Base: main 194e187. Feita pelo corretor-redundancias, só leitura. 33 achados (RD-1048 a RD-1080): 4 remover, 29 trocar. Para aprovação do Alexandre (pelo PO).

## Portal /config (engenheiro-apps)
| RD | Onde | Texto atual | Ação | Proposta |
|---|---|---|---|---|
| 1048 | lista de Módulos | linha "Core" travada + "Sempre ligado" | remover | sai a linha (já no PR da v0.3.2) |
| 1049 | lista de empresas, coluna Módulos | "Só o core" | trocar | "—" |
| 1050 | aviso ao criar empresa | "Empresa criada com o core ligado. Ligue os módulos e crie o 1º administrador." | trocar | "Empresa criada. Ligue os módulos e crie o 1º administrador." |
| 1051 | diálogo Redefinir senha | "A trava é zerada e as sessões dele são encerradas." | trocar | "A senha atual deixa de valer, e ele precisa entrar de novo com a senha nova." (já no PR da v0.3.2) |
| 1052 | diálogo Suspender | "Não escreva dado pessoal no motivo: ele fica registrado na auditoria." | trocar | "Não escreva dado pessoal no motivo." |
| 1053 | empresa encerrada | "Empresa encerrada. O portal não altera empresas encerradas." | trocar | "Empresa encerrada." |
| 1054 | erro de acesso | "Sua sessão terminou. Entre de novo." | trocar | "Seu acesso expirou. Entre de novo." |

## Shell do BKO, todas as telas (engenheiro-apps)
| RD | Onde | Texto atual | Ação | Proposta |
|---|---|---|---|---|
| 1055 | erro de acesso | "Sessão expirada: entre de novo." | trocar | "Seu acesso expirou. Entre de novo." |
| 1056 | telas sem conteúdo | "Esta tela ainda não foi construída." | trocar | "Disponível em breve." |
| 1057 | início | "Comece pelo menu ao lado: ele mostra o que a sua empresa contratou." | trocar | "Comece pelo menu ao lado." |
| 1058 | erro | "A API não respondeu. Tente de novo em instantes." | trocar | "Sem resposta do servidor. Tente de novo em instantes." |
| 1059 | erro | "A API respondeu fora do contrato." | trocar | "Não foi possível concluir agora. Tente de novo em instantes." |
| 1060 | erro | "A API não está configurada neste ambiente." / "…configure MACUXIERP_API_URL." | trocar | "Indisponível agora. Fale com a Macuxi." |
| 1061 | erro | "A ação foi recusada pelas regras de negócio." | trocar | "Não foi possível concluir. Confira os dados e tente de novo." |
| 1062 | detalhe | "Horários no fuso da empresa." | remover | — |

## Carga de cadastros (engenheiro-apps e modulo-cadastros)
| RD | Texto atual | Ação | Proposta |
|---|---|---|---|
| 1063 | "Carregue na ordem abaixo: cada arquivo depende dos de cima. Em cada entidade, baixe o modelo, preencha, escolha o arquivo e use Validar; o Gravar só liga depois de uma validação sem erro." | trocar | "Carregue na ordem abaixo. Em cada cadastro: baixe o modelo, preencha, escolha o arquivo, valide e grave." |
| 1064 | coluna "Entidade" | trocar | "Cadastro" |
| 1065 | "A carga passou do tempo e foi desfeita: nada foi gravado. Divida o arquivo…" | trocar | "A carga passou do tempo. Divida o arquivo em partes menores e envie de novo." |
| 1066 | "Validação (nada foi gravado): números previstos" | trocar | "Validação: números previstos" |
| 1067 | "Gravar N arquivos nos cadastros? Linhas iguais ao que já existe não mudam; o resto é criado ou atualizado. Use Validar antes para conferir." | trocar | "Gravar N arquivos nos cadastros? Valide antes para conferir." |
| 1068 | "O envio passa de X MB: mande poucos arquivos por vez ou use a linha de comando" | trocar | "O envio passa de X MB: mande poucos arquivos por vez." |
| 1069 | "Ignorado (fora da v1)" | trocar | "Ignorado" |

## Integração FDV (engenheiro-apps e modulo-integracao-fdv)
| RD | Texto atual | Ação | Proposta |
|---|---|---|---|
| 1070 | "(chave: valor; …)" da política de versão ao lado do sinal | trocar | só quando parado por versão: "Versão do FDV não aceita. Atualize o Macuxi FDV." |
| 1071 | "A chave nunca volta para a tela: depois de salvar, só o começo dela aparece." | remover | — |
| 1072 | "Registros que não foram ao FDV porque a chave mudou ou está repetida. Corrija no cadastro de origem." | trocar | "Corrija a chave no cadastro de origem." |
| 1073 | "Ver os envios (lotes)" | trocar | "Ver os envios" |
| 1074 | "Enviar X ao FDV de novo, tudo de uma vez? Pode demorar. O que já está igual no FDV não muda." | trocar | "Enviar X ao FDV de novo, tudo de uma vez? Pode demorar." |

## Faturamento (engenheiro-apps e modulo-faturamento)
| RD | Texto atual | Ação | Proposta |
|---|---|---|---|
| 1075 | "Autorizada pela SEFAZ. O XML ainda está sendo guardado; nada mais anda até guardar." | trocar | "Autorizada pela SEFAZ. Aguarde alguns instantes para seguir." |
| 1076 | listas vazias com 2ª frase explicativa ("Os pedidos aparecem aqui quando…", "Está tudo certo.", …) | trocar | só a 1ª frase de cada uma |
| 1077 | "As próximas notas saem pelo autorizador normal." | trocar | "As próximas notas voltam a sair normalmente." |

## Core e Cadastros (modulo-core e modulo-cadastros)
| RD | Texto atual | Ação | Proposta |
|---|---|---|---|
| 1078 | "A exportação ainda não está disponível: o armazenamento de arquivos entra em breve." | trocar | "Exportação disponível em breve." |
| 1079 | "Para emitir em produção, peça à Macuxi. A troca é feita com a aprovação do Alexandre." | trocar | "Para emitir em produção, fale com a Macuxi." |
| 1080 | colunas "Ind. IE", "tPag", "CRT" | trocar | "Contribuinte ICMS", "Forma de pagamento", "Regime tributário" |

## Mantidos de propósito
Aviso de que a senha provisória não volta a aparecer; avisos de consequência em emitir, cancelar, estornar e trocar chave de integração; mensagens de erro que já dizem o que fazer.
