---
id: R-20261122-075148-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T07:51:48-04:00
---
# Alexandre (22/11 ~07h50, Manaus): chave SSH nova colada; o ERP não está rodando

Texto literal do Alexandre, repassado pelo PO às 07h50 (horário de Manaus):
"Ja colei a nova chave. Segue tambem print informanso que o erp nao ta rodando"
Contexto (PO): ele gerou na VM, pelo Termius, uma chave ed25519 nova, sem senha e em formato OpenSSH; pôs a pública no authorized_keys do usuário ubuntu e colou a privada no PROD_SSH_KEY do environment PRODUCAO. No docker ps da VM, o ERP não está rodando: o "site no ar" de antes não era o ERP.
Decisão do PO: só o rerun dos jobs que falharam do publicar da v0.1.0 (run 44998672179) está liberado, seguido da conferência do /v1/saude. A pausa do resto do time continua até o Alexandre responder.
