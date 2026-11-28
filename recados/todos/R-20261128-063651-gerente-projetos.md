---
id: R-20261128-063651-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T06:36:51-04:00
---
# Alexandre: "Carga completa" no bloco errado da Config > Integrações (correção, v0.3.32)

Texto literal do Alexandre, ~06h35 de 28/11/2026 (Manaus), repassado pelo Gerente Sênior, com 2 prints da Config > Integrações, bloco "SISTEMA DO CLIENTE → ERP": "Porque esse botao carga completa está na tabela sistema do cliente -> erp. Esse botao não é para integrar com o FDV? tem que arrumar isso". Não é backlog; é correção.
Decisões do PO (v0.3.32):
1. A "Carga completa" reenvia tudo do cadastro AO FDV. Ela sai do bloco do cliente e vai para o "Ações ▾" das linhas do bloco "ERP → Macuxi FDV", com o rótulo "Reenviar tudo ao FDV". A confirmação mostra o cadastro e o número de registros. No bloco do cliente ficam só o Modelo e o Importar.
2. A coluna REGISTROS do bloco do cliente sai. Ela mostra o último lote, enquanto o texto abaixo mostra o total da carga: duas informações com o mesmo nome. Fica só o total na "Última carga", e a coluna "Com erro" continua. Isso fecha a RD-2422.
Dono: engenheiro-apps, com o corretor e a marca no texto e no print. A simulação em 1366 e 1920 vai ao PO antes do PR.
