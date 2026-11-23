# v0.3.5: aba "Cargas" no /config, aprovada pelo Alexandre

Aprovação: R-20261123-145001-alexandre, às 14h50 de Manaus (o horário foi corrigido no R-20261123-145018), pelo PO.

## Revisão exigida
Antes do lote, a tela passa por três revisões, com prints de dados fictícios:
- corretor-redundancias, pela regra A0;
- design-de-marca;
- designer-ux.

## Itens aprovados
- **Aba "Cargas"** na ficha da empresa, com uma linha por cadastro. A ordem dos elementos na linha é:
  - número;
  - nome;
  - chip de situação: "Carregado" em verde, "N com erro" em laranja e "Não carregado" em cinza;
  - data e quantidade da última carga;
  - link "Modelo";
  - botão "Importar".
- **Dependência:** o cadastro dependente mostra "Carregue antes: X", com o Importar desligado.
- **Opcional:** a linha de unidades aparece como "Unidades (opcional)".
- **Zerar:** "Zerar dados" fica no alto da mesma aba.
- **Janela "Importar <cadastro>":**
  - botão "Escolher arquivo", e a conferência roda sozinha ao escolher (não há botão Validar);
  - duas caixas: "N prontas para gravar" em verde e "N com erro (ficam de fora)" em vermelho;
  - lista "Linha N", com o motivo e a ação;
  - "Baixar erros";
  - botões "Cancelar" e "Gravar N".
- **Fora:** modo completo, "Dicionário de campos" e "Exportar resumo".

A maquete é referência de layout: `maquete-cargas-config-aprovada.html`, nesta pasta. As cores são as do packages/ui. Os dados da maquete são fictícios.

## Ajuste do Alexandre (R-20261123-145123, 14h51 de Manaus, pelo PO)
- **Botões da janela Importar:** "Cancelar", "Adicionar" e "Substituir tudo". O "Gravar N" sai.
- **"Adicionar":** acrescenta e atualiza, sem tirar nada. É o delta de hoje.
- **"Substituir tudo":** volta a ser a carga completa.
  - Antes de gravar, abre uma confirmação: é preciso digitar "autorizo substituir tudo".
  - O que não vier no arquivo é INATIVADO, nunca apagado.
  - O que está em uso em pedido, título ou nota fica inativo e é mantido.
  - A inativação vai ao FDV pela integração e passa pelo limite de 30% do FDV.
- **"Zerar dados":** a confirmação passa a ser digitar "autorizo zerar os dados", no lugar do código da empresa (RN-CAD-10 ajustada).
- **Nos dois casos:**
  - a comparação ignora maiúsculas e o ponto final;
  - o botão fica desligado até a frase bater.
- **Revisão:** corretor, marca e designer-ux, como já combinado.
