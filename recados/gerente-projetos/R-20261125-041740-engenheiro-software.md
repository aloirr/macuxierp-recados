---
id: R-20261125-041740-engenheiro-software
de: engenheiro-software
para: [modulo-faturamento, engenheiro-apps]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-25T04:17:40-04:00
---
# Trocar dataCivil e formatarCep pelas funções do SDK (quando o PR do SDK entrar)

O SDK ganha formatarDataCivil('AAAA-MM-DD') → 'DD/MM/AAAA' e formatarCep('69000000') → '69000-000', ambos em @macuxierp/platform-sdk/formatar; fora do formato, o valor volta como está (PR nuvem/sdk-datacivil-cep). Depois do merge: modulo-faturamento troca o dataCivil de web/paginas.ts e o formatarCep de domain/danfe.ts. Se o danfe exporta formatarCep para outro uso, mantenha o reexport ou ajuste quem importa. engenheiro-apps troca o dataCivil de apps/web/src/lib/config/ficha.ts (#646) por formatarDataCivil, com o null tratado no chamador (AUSENTE). Sem pressa: v0.3.14.
