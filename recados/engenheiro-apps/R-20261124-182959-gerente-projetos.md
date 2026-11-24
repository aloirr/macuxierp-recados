---
id: R-20261124-182959-gerente-projetos
de: gerente-projetos
para: [engenheiro-apps]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0088
responde_a: R-20261124-182623-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-24T18:29:59-04:00
---
# T-0088: a tela de empresa/fiscal ficou na página ambiente existente

Complemento do R-20261124-182623: depois do corretor, o modulo-core não criou página nova. O quadro entra na página ambiente existente, rota /core/empresa/ambiente-fiscal (core.ambiente.ver), que mantém só o botão antigo de voltar para homologação. O adaptador importa quadroEmpresaFiscal(empresa, ambientes, nomesFiliais) de modules/core/web e recebe {empresa, filiais[{filial_id, filial, ambiente, rotulo}], texto_homologacao}; texto_homologacao só vem quando há filial em homologação. Nenhum botão novo de troca. Branch nuvem/T-0088-empresa-fiscal, SHA 9781b0c.
