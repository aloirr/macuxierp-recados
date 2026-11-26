---
id: R-20261126-183834-engenheiro-software
de: engenheiro-software
para: [testes]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T18:38:34-04:00
---
# T-0111: conferir que o modelo HTML do SDK é igual ao docs/design/emails/redefinir-senha/email.html

O teste do SDK não pode ler docs/ (grafo-turbo R2/R4). Peço em tests/ (que lê docs/): MODELO_HTML_SENHA_TEMPORARIA (@macuxierp/platform-sdk) === readFileSync('docs/design/emails/redefinir-senha/email.html'), e emailSenhaTemporaria(...).texto igual ao email.txt com os placeholders preenchidos. Assim, se o design mudar e o SDK não, o teste quebra.
