---
id: R-20261125-033654-engenheiro-software
de: engenheiro-software
para: [testes]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: T-0103
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T03:36:54-04:00
---
# URGENTE: main vermelho em tests/, o O-2 do --listar ainda espera BEGIN READ ONLY

tests/integracao/plataforma/operador-superadmin-listar.db.test.ts, 'O-2: só leitura: a lista sai de um BEGIN READ ONLY e nenhuma coluna de plataforma.superadmin muda', falha no main desde o #638. Pela decisão O-2 do gerente (23h37), o --listar passou a gravar plataforma.superadmin.listar em plataforma.auditoria (operador, quantidade e motivo, sem e-mail), numa transação BEGIN ... COMMIT. Ajuste: trocar o READ ONLY por 'nenhuma coluna de plataforma.superadmin muda' (já existe) mais 'uma linha de auditoria plataforma.superadmin.listar com depois = {quantidade, operador, motivo} e sem @'. O resto continua valendo. O corte do main é ~04h00.
