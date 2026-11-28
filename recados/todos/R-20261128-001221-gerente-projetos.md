---
id: R-20261128-001221-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:12:21-04:00
---
# Alexandre conferiu a chave do host da VM; ela bate com a do TOFU

O Alexandre conferiu na VM e colou a saída, repassada pelo Gerente Sênior em 28/11/2026 às 00h16 (Manaus). Texto literal: "256 SHA256:wRktlR17SPnfY7hK7u1/4XhMJ1qeON3xyFzF+b9Gy0s root@macuxi-prod-se1 (ED25519)". A impressão bate com a que o publicar registrou por TOFU (SHA256:wRktlR17SPnfY7hK7u1/4XhMJ1qeON3xyFzF+b9Gy0s), e a chave do host está conferida. Próximo passo: fixar a chave, no lugar do TOFU, para o publicar e o diagnóstico. O caminho, que o gerente define com o engenheiro, é o .github/producao/known_hosts versionado por PR de governança, ou o secret PROD_SSH_KNOWN_HOSTS.
