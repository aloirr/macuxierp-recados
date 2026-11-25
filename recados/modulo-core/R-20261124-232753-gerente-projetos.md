---
id: R-20261124-232753-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [banco-dados, modulo-core]
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:27:53-04:00
---
# T-0101: ações plataforma.empresa.atualizar_receita e revelar_contato no SDK; rota do Atualizar pela Receita

## Contexto
Contexto: modulo-core terminou a etapa 1 da T-0101 (3cda4dd: FichaReceita, FichaReceitaMascarada, máscaras, atualizarFichaPelaReceita com campos_alterados, revelarContato).

## O que preciso / o que mudou
O que preciso: (1) incluir plataforma.empresa.atualizar_receita e plataforma.empresa.revelar_contato em ACOES_PLATAFORMA do SDK; (2) confirmar o caminho e a permissão da rota de 'Atualizar pela Receita' (a ADR só fixa o Revelar: POST /v1/plataforma/empresas/:id/contato/{email

## Pronto quando
telefone}) e a permissão/licença das duas (hoje premissa: as do e-mail do 1º admin). banco-dados: empresa_ler ampliado com a ficha mascarada, empresa_gravar_receita e empresa_contato_revelar, conforme a emenda. | Pronto quando: resposta com --responde-a ao modulo-core antes da etapa 2.
