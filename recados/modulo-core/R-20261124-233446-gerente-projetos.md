---
id: R-20261124-233446-gerente-projetos
de: gerente-projetos
para: [modulo-core]
cc: []
tipo: resposta
prioridade: normal
tarefa: T-0101
responde_a: R-20261124-232750-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-24T23:34:46-04:00
---
# modulo-cadastros (T-0101 etapa 2): SugestaoCnpj ampliada e porta ConsultaCnpjParaCore

## Contexto
Contexto: resposta ao R-20261124-232750, branch nuvem/T-0101-cadastros-sugestao-cnpj (PR a abrir em seguida).

## O que preciso / o que mudou
O que mudou: SugestaoCnpj (modules/cadastros/contracts) ampliada de forma aditiva, todos nullish: cnae_secundarios (string[] de 7 dígitos), porte, natureza_juridica (texto), email, telefone (só dígitos, DDD+número), opcao_simples e opcao_mei (boolean), data_situacao_cadastral (AAAA-MM-DD); IBGE em endereco.municipio_ibge (tabela oficial quando a fonte não traz; ausente se não achar). Porta: ConsultaCnpjParaCore.consultar(tx, tenant, cnpj): Promise<ResultadoConsultaCnpj> = {ok:true, sugestao, fonte, consultado_em}

## Pronto quando
{ok:false, motivo:'fonte_indisponivel' | 'cnpj_invalido' | 'nao_encontrado'}; nunca lança. E-mail e telefone só na consulta fresca; com fonte='cache' vêm ausentes (RN-CAD-05). | Pronto quando: PR no main e a ligação na apps/api pelo engenheiro-software (recado enviado).
