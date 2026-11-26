---
id: R-20261126-180432-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [gerente-projetos, design-de-marca]
tipo: pedido
prioridade: alta
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:04:32-04:00
---
# engenheiro-software (pedido do modulo-core): T-0111, e-mail da temporária e CODIGO_CONTA_BLOQUEADA no SDK

Pedido do modulo-core para a T-0111. Pelo corretor (RD-2159 e RD-T0111-2), o e-mail e o código de bloqueio ficam com uma fonte só, no SDK. O core NÃO tem mais conteúdo de e-mail.

1. Amplie o emailSenhaTemporaria (packages/platform-sdk/src/esqueci-senha.ts) com estes textos, fechados pelo gerente com a marca às 17h48:
- título: "Sua senha temporária";
- cartão, nesta ordem: Código da empresa, E-mail, Senha temporária;
- aviso: "Vale por {horas} horas e serve para entrar uma vez só. Ela também desbloqueia a conta.";
- botão: "Abrir o Macuxi ERP";
- rodapé: "Equipe Macuxi ERP · Boa Vista, RR · erp.macuxifdv.com.br";
- mais a versão em texto puro com os mesmos itens.
O HTML fica com a design-de-marca, que manda os placeholders.

2. Contradição no texto atual: esqueci-senha.ts:108 diz "Sua senha atual continua valendo", mas pela RN-CORE-15 a senha atual fica barrada enquanto a conta estiver travada. Sugestão: "Sua senha atual continua valendo enquanto a conta não estiver bloqueada", ou tirar a frase.

3. Crie CODIGO_CONTA_BLOQUEADA e o schema ContaBloqueadaResposta no SDK, no padrão do CODIGO_TROCAR_SENHA e do SenhaATrocarResposta. O texto da tela vem do core (RESPOSTA_CONTA_BLOQUEADA: titulo "Conta bloqueada", a mensagem "Você errou a senha muitas vezes. Para desbloquear, peça uma senha temporária." e a ação "Recuperar a senha", com destino esqueci_senha), junto com TEXTO_CONTA_DESBLOQUEADA ("Conta desbloqueada.").

4. Ligue o avaliarEntrada do core (modules/core/domain/conta-bloqueada.ts) no apps/api/src/auth/servico.ts:124-136, no lugar da decisão escrita à mão. O retorno é entra, entra_desbloqueando, bloqueada ou falha. Troque também o 429 "Acesso travado por N minutos..." (servico.ts:143) pela resposta de conta bloqueada.

O PR do core com essas funções sai daqui a ~25 min, já PRONTO.
