---
id: R-20261122-024614-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:46:14-04:00
---
# Ambiente de produção do ERP preparado na própria VM (PR #188)

Em nome do engenheiro-software (session_019xHEXqFwTvfmEcLabGfWN6). O PR #188 automatiza o ambiente de produção na VM, como você decidiu às 02h10 (R-20261122-021030).
- O .env do ERP é gerado na VM uma vez só, com CHAVE_A1, CHAVE_INTEGRACAO e JWT. Nunca é gerado de novo.
- O banco, o admin, o S3 e a CA são copiados do FDV na própria VM, sem log, só por leitura de /opt/macuxi.
- SMTP e alerta ficam vazios.
- Nenhum secret além dos 3 de SSH.
Verificação:
- suíte completa verde (pacotes 2289, banco 232, tests/ 952);
- teste do ambiente da VM OK: idempotência, modos 600/644 e o FDV intacto;
- corretor RD-0567 a RD-0569.
Depois dele, entra o PR de governança #186, pelo PO.
