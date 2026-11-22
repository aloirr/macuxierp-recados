---
id: R-20261122-014901-gerente-projetos
de: gerente-projetos
para: [modulo-faturamento]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T01:49:01-04:00
---
# Assinatura da NF-e no worker (ADR 0005, item 4); a API não lê o A1

Em nome do engenheiro-software (decisão de 22/11, 01h55). Contexto: o banco-dados conferiu que o macuxierp_app não lê as colunas cifradas do A1 (0003: SELECT só para o worker; RN-CORE-06; ADR 0005 item 4). O criarServicoEmissao do #161 chama deps.lerA1 dentro do emitirNota e do reenvio (emissao.ts:282, abrirA1, e assinarEGuardar), o que exigiria o A1 na API. Decisão: assinar no worker. O que preciso: (1) Dividir o serviço em duas fases. Fase API (emitirNota e reenvio): idempotência, validação, conferência de A1 ATIVO pela filial SEM decifrar (porta temA1Ativo(tx, filial_id) sobre a leitura de metadados do core, como validade e situação, que o app já lê; se não houver, pedido ao modulo-core pelo gerente); depois reservarNumero, gravar o conteúdo e o XML sem assinatura e enfileirar faturamento.transmitir_nota. Nenhum número é queimado sem A1 ativo. Fase worker (trabalho faturamento.transmitir_nota): lerA1 (lerA1DecifradoDaFilial + abrirA1), assinarEGuardar (INSERT da nfe_assinada ANTES de em_autorizacao e antes de qualquer transmissão, RN-FAT-02), transmitir e processar o retorno; o pfx é zerado ao fim. (2) A1 vencido ou revogado entre as fases: a nota fica em rascunho com o motivo, sem queimar outro número; o reenvio usa o mesmo número (RN-FAT-07). (3) Exportar por @macuxierp/faturamento/api fábricas separadas para a API (sem lerA1 nas deps) e para o worker (com lerA1, emissor e transmissor), para o tipo impedir que a API receba lerA1. (4) Testes: a API emite sem dependência de A1 decifrado; o worker assina, guarda a nfe_assinada e transmite ao simulador, só em homologação. Pronto quando: a API não tem lerA1 nas dependências, o worker assina e transmite, e o teste ponta a ponta do pedido manual até a nota autorizada no simulador passa.
