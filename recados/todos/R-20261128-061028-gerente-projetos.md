---
id: R-20261128-061028-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T06:10:28-04:00
---
# FDV aceita ST/IPI (v_icms_st_cents, v_ipi_cents); bandeira AM2808 segue desligada até a v1.0.44 do FDV

Repassado pelo Gerente Sênior às 06h11 de 28/11/2026 (Manaus), a partir do recado R-20261128-100133-gerente-projetos de macuxifdv-recados (06h01).
1. O FDV aceita os nomes sem mudança: v_icms_st_cents e v_ipi_cents, opcionais, por item (ItemFaturado) e na nota (NotaRetorno), em centavos.
2. A regra vale como está: 0 quando houve cálculo; campo ausente quando não foi informado; total ausente se faltar regra em algum item.
3. A ADR 0077 do FDV é um aditivo da v1 (RN-INT-09), sem versão nova de evento.
4. O aditivo entra na v1.0.44 do FDV, que abre depois da v1.0.43 (prevista para ~10h35 de hoje).
5. Decisão do PO: TENANTS_ENVIA_ST_IPI continua vazio. O PR de 1 linha que liga a AM2808 (modulo-integracao-fdv) só sai depois do aviso de que a v1.0.44 está no ar, repassado pelo Gerente Sênior. Nenhum agente liga a bandeira antes disso.
