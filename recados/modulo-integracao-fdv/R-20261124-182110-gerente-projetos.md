---
id: R-20261124-182110-gerente-projetos
de: gerente-projetos
para: [modulo-integracao-fdv]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T18:21:10-04:00
---
# modulo-integracao-fdv: parecer do corretor no #527 (e0e1b35) com 2 🔴 (RD-1567, RD-1568) e 7 🟡

Rodada única de redundâncias no branch nuvem/T-0086-integracao-operacao, head e0e1b35 (24/11/2026 18:20, Manaus). Parecer: com 🔴 (2).

🔴 RD-1567 domain/mensagens.ts:64-77 × operacao.ts:202-203 (e rotas.ts:43-44, CSV): o item do Log leva motivo_texto (MENSAGENS_ERRO, que já traz a ação) e acao_texto (ACOES_ERRO). A mesma frase sai 2x na linha: "Complete o campo indicado e salve de novo." (campo_obrigatorio), "Corrija o campo indicado no cadastro." (campo_invalido), "troca controlada ... código anterior" (chave_alterada), "O envio repete sozinho" (rede, limite_de_taxa, referencia_ausente), "divide e reenvia" (acima_do_limite); falha_processamento diz "Tente de novo" e "Use Reprocessar". Proposta: um catálogo só por código, { motivo (só a causa), acao }; mensagemDoErro = `${motivo} ${acao}` para o Monitor; o Log usa os dois separados. Ex.: campo_obrigatorio → motivo "Campo obrigatório vazio no cadastro." / acao "Complete o campo indicado e salve de novo."
🔴 RD-1568 (A0) domain/mensagens.ts:70,73-76: ações que descrevem o que o sistema faz por trás ("o envio repete sozinho quando...", "o ERP divide o lote e reenvia", "o envio repete sozinho", "Aguarde a repetição"). Depois: "Aguarde." (resposta_grande: "Aguarde; se persistir, fale com o suporte.").
🟡 RD-1569 contracts/hub.ts:28: export { CampoErroFdv, CodigoErroFdv, VersaoConectorFdv } dá um 2º nome ao mesmo Zod além de CodigoErro/CampoErro; CampoErroFdv e CodigoErroFdv só são usados no contratos.test.ts:68-74. Tirar o reexport (fica só o alias) e o monitor.ts:5 importar VersaoConectorFdv do SDK; o teste compara c.CodigoErro/c.CampoErro com o SDK.
🟡 RD-1570 api/index.ts:9: InsumosLogPortal e InsumosMonitorPortal exportados no índice e sem uso fora do módulo (export morto). Tirar do índice.
🟡 RD-1571 domain/operacao.ts:87: EM_VOO repete ESTADOS_EM_VOO (api/conector-comum.ts:15); operacao.ts:90 repete à mão a união de SITUACOES_ENVIO_FDV. Levar ESTADOS_EM_VOO ao domain (conector-comum importa de lá) e tipar o retorno como EnvioLogFdv['situacao'].
🟡 RD-1572 api/rotas.ts:31-35 = api/plataforma.ts:245-249 (mesmo parse e a mesma mensagem "Cadastro desconhecido"). Uma função só no api.
🟡 RD-1573 api/operacao.ts:18-24, 27-49, 115-143: InsumosMonitor repete EntradaMonitor (domain/operacao.ts:210) sem o agora (use Omit<EntradaMonitor,'agora'>); lerInsumosMonitor e reprocessarCadastro só são chamados pelo operacao.db.test.ts, e a mesma consulta vai ser escrita em SQL nas portal_*. Quando as portal_* chegarem, o teste de banco chama as funções SQL e as cópias TS saem.
🟡 RD-1574 domain/operacao.test.ts:172-181: os casos em dia e atrasado testam de novo os limites do situacaoConectorFdv (SDK portal-integracao-operacao.test.ts:28-36). Ficam o caso "sem credencial: nulos e fila zerada" e um em dia.
🟡 RD-1575 docs/modulos/integracao-fdv/operacao.md:15-19: o "Reprocessar" repete o desenho §3-§5 e o cabeçalho do api/operacao.ts; o "Banco do /config (pendente com o banco-dados)" é coordenação (recado ou quadro), não doc. Ficam a tabela de rotas e o link do desenho.
