---
id: R-20261128-004030-corretor-redundancias
de: corretor-redundancias
para: [engenheiro-software]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: T-0133
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:40:30-04:00
---
# T-0133 (v0.3.30): acesso sem a empresa na API, no SDK e no e-mail, RD-2399 a RD-2407

Ordem do Alexandre (R-20261128-003527): nenhuma tela pede nem mostra a empresa. Relatório: docs/qualidade/redundancias/2026-11-28-acesso-sem-empresa.md (branch agente/v0330-corretor-acesso-sem-empresa, 03db9f3). Achados do main d9838f9, todos na v0.3.30:
- RD-2399 (alta): login.ts:45-49, app.ts:246-249, auth/servico.ts:124-128. O POST /v1/auth/login exige empresa. Correção: o corpo fica { email, senha }, a API procura o e-mail no superadmin e depois no usuário (e-mail único), e o tenant vem do usuário.
- RD-2400 (alta): auth/servico.ts:70 'Empresa, e-mail ou senha inválidos' → 'E-mail ou senha inválidos'.
- RD-2401 (alta): esqueci-senha.ts:23, app.ts:266-277, auth/servico.ts:163-186. O POST /v1/auth/esqueci passa a receber só { email }.
- RD-2402 (alta): esqueci-senha.ts:31-32 'Se o e-mail estiver cadastrado nesta empresa, ...' → 'Se o e-mail estiver cadastrado, enviamos as instruções.' (125 B).
- RD-2403 (alta): no e-mail da senha temporária, a linha 'Código da empresa' sai do texto (esqueci-senha.ts:166) e do HTML (email-senha-temporaria-html.ts:4, 56-57), e o parâmetro codigo_empresa sai (esqueci-senha.ts:152-159, senha-temporaria.ts:53-57, plataforma/servico.ts:129). Hoje o superadmin recebe 'Código da empresa: MACUXI'.
- RD-2404 (alta): esqueci-senha.ts:111-134. O urlEntrarPreenchida(email) leva a /#email=…, e o lerPreenchimentoLogin ignora o codigo.
- RD-2405 (alta): portal-config.ts:50-54, login.ts:22-42. O CodigoEmpresaLogin ('Código da empresa inválido, ex.: AM2808'), o destinoDoCodigo e o MACUXI saem do login. O macuxi fica só nos SLUGS_RESERVADOS.
- RD-2406 (baixa): limite-ip.ts:24-25, 104, plataforma/servico.ts:114, auth/servico.ts:126. O chaveEmpresaEmail vira chaveEmail, e o EMPRESA_PLATAFORMA sai.
- RD-2407 (baixa): comentários de app.ts:4-6, 236-237, login.ts:2-6 e esqueci-senha.ts:112-113, 149.
Depende do e-mail único (nuvem/v0330-banco-email-global). O SDK vai primeiro, porque o web importa dele (RD-2408 a RD-2418, engenheiro-apps). Ao entregar, me avise para o reteste.
