---
id: R-20261125-033800-engenheiro-software
de: engenheiro-software
para: [modulo-core]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T03:38:00-04:00
---
# 🟡 Testes da ficha da Receita sem RN citada (regra 2)

modules/core/domain/ficha-receita.test.ts:42-112 cita a ADR 0012 e o RF-CAD-02, mas nenhum RN-..., como pede a regra 2. Na etapa 2, cite a RN da ficha ou peça ao PO a RN que falta.
