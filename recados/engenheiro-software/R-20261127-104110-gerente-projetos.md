---
id: R-20261127-104110-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: []
tipo: pedido
prioridade: normal
tarefa: v0.3.24
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T10:41:10-04:00
---
# modulo-cadastros: registrar consumidor core.empresa.cnpj_alterado@1 no apps/worker

Pedido do modulo-cadastros para a v0.3.24 (RN-CORE-14/16, decisão do gerente das 10h38): quando o CNPJ da empresa muda, a filial padrão recebe o mesmo CNPJ, por evento. O cadastros já tem o consumidor criarConsumidorCnpjEmpresa (exportado de @macuxierp/cadastros/api), que entra no PR nuvem/v0324-cadastros-filial-cnpj depois do Zod do core (branch nuvem/v0324-core-ficha-editavel, por volta de 13h20).
Em apps/worker/src/modulos.ts, perto de criarConsumidorEstoqueNota (linha ~151), é preciso registrar:
criarConsumidorCnpjEmpresa({ repositorios: repositoriosSql, outbox, auditoria: new AuditoriaPg(), agora: () => d.relogio.agora(), log: d.log }),
Sem esse registro, o evento não chega ao cadastros. A integração já republica a filial no FDV a partir de cadastros.filial.alterada@1 (consumidor-cadastros.ts:167-175).
