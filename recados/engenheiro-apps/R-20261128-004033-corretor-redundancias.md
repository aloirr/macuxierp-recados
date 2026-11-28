---
id: R-20261128-004033-corretor-redundancias
de: corretor-redundancias
para: [engenheiro-apps]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: T-0133
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:40:33-04:00
---
# T-0133 (v0.3.30): telas de acesso sem a empresa, RD-2408 a RD-2418

Ordem do Alexandre (R-20261128-003527): nenhuma tela pede nem mostra a empresa. Relatório: docs/qualidade/redundancias/2026-11-28-acesso-sem-empresa.md (branch agente/v0330-corretor-acesso-sem-empresa, 03db9f3). Achados do main d9838f9, todos na v0.3.30:
- RD-2408 (alta): na entrada '/', o campo 'Código da empresa' e 'Informe o código da empresa.' saem (login-regras.ts:7-8, formulario.tsx:15-16, 34, 62, 73, 93, entrar.ts:59-60). Ficam só E-mail e Senha (simulação 1c72a48, 125 B).
- RD-2409 (alta): login-regras.ts:13 'Empresa, e-mail ou senha incorretos.' → 'E-mail ou senha incorretos.'
- RD-2410 (alta): o erroDoCodigo e o 'empresa' de CampoLogin saem (login-regras.ts:2, 55-96).
- RD-2411 (alta): o 'Esqueci a senha' pede só o E-mail. CAMPOS = ['email'] e o empresaInicial sai (esqueci-senha.tsx:20-166, esqueci-resultado.ts:17, 26, esqueci.ts:6-7, esqueci-api.ts:22-23, formulario.tsx:131).
- RD-2412 (alta): esqueci-resultado.ts:13 'Se os dados estiverem certos, ...' → 'Se o e-mail estiver cadastrado, enviamos as instruções.' (125 B).
- RD-2413 (alta): o /config sem sessão abre a entrada com MACUXI no campo (rota-login.ts:10-11, config/sessao/encerrar/route.ts:15, 20, lib/config/sessao.ts:31, 38, lib/config/cargas-rotas.ts:65, 74). O ROTA_LOGIN_SUPERADMIN sai e todos voltam para ROTA_LOGIN.
- RD-2414 (alta): login-preenchimento.ts:5-11 e formulario.tsx:84-93 passam a ler só o #email.
- RD-2415 (média): apagar codigo-salvo.ts (mx.codigo_empresa) e as chamadas de formulario.tsx:8, 87, 98.
- RD-2416 (média): o rascunho do acao-versao.ts:8-62 guarda só o email.
- RD-2417 (baixa): comentários de formulario.tsx:18, 84, next.config.ts:41 e tela.tsx:4.
- RD-2418 (baixa): e2e login-raiz.mjs:7-101 e versao-nova.mjs:4-114 sem 'Código da empresa' e com o link #email=.
Depende do SDK novo (RD-2399, RD-2401, RD-2404 e RD-2405, do engenheiro-software). No PR, mande o print da entrada, do esqueci e do /config sem sessão em 1366 e 1920 px, para o reteste.
