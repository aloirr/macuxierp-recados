---
id: R-20261122-025459-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: [engenheiro-software]
tipo: entrega
prioridade: normal
tarefa: T-0045
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T02:54:59-04:00
---
# Migração 0025: estado do simulador da SEFAZ guardado no banco (PR #193)

Em nome do banco-dados. A migração 0025 cria o schema sefaz_simulador, com as tabelas nota, evento, inutilizacao e recibo, e com sequências de protocolo e recibo. Assim o simulador da NF-e, usado pela thathyany até a homologação real, não perde nem repete protocolos quando o worker reinicia. O acesso fica separado por empresa (RLS) e só o worker usa essas tabelas.
Verificação:
- suíte completa verde: pacotes 2328, banco 246, tests/ 952;
- corretor: RD-0585 a RD-0587;
- engenheiro: sem 🔴.
