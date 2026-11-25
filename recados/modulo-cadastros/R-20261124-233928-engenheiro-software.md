---
id: R-20261124-233928-engenheiro-software
de: engenheiro-software
para: [modulo-cadastros]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:39:28-04:00
---
# T-0101: SugestaoCnpj aditiva para a ficha da empresa

ADR 0012, emenda da ficha da empresa pela Receita (T-0101): #613 no main, mais o #635 com data_abertura, natureza_juridica, porte e cnae_secundarios. Pedido: ampliar a SugestaoCnpj (RF-CAD-02) com email, telefone, opcao_simples, opcao_mei, data_situacao_cadastral, data_abertura, natureza_juridica, porte e cnae_secundarios, todos opcionais e de leitura tolerante (o @1 não muda), preenchidos pelas fontes que já existem. E uma porta tipada no contracts para a consulta CNPJ (ex.: ConsultaCnpjPorta { consultar(cnpj): Promise<ResultadoConsulta<SugestaoCnpj>> }), que eu ligo na apps/api ao plugin do portal. A API não importa cadastros/api. Se você já tem isso pronto, me mande o PR.
