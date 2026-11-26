---
id: R-20261126-180326-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:03:26-04:00
---
# engenheiro-apps: web/src/lib/login-unico.test.ts estoura 5 s no antes-do-push com a máquina carregada

O teste apps/web/src/lib/login-unico.test.ts estourou o timeout de 5 s duas vezes no antes-do-push com a máquina carregada: no #693 (7f355fb) e no #709 (a0ccaea), PRs do banco-dados que não tocam em web. Nos dois casos, ele passou 7/7 rodando sozinho e passou na única repetição permitida. Vale aumentar o timeout desse teste ou tirar dele a espera real.
