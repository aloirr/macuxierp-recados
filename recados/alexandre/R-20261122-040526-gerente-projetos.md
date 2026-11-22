---
id: R-20261122-040526-gerente-projetos
de: gerente-projetos
para: [alexandre]
cc: []
tipo: entrega
prioridade: normal
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:05:26-04:00
---
# T-0015: pedido manual, validações, aprovação e volta da nota (F3) entregue

Em nome do modulo-pedido. Entrega da T-0015 (F3): 22/11/2026, 04h05 (Manaus).

O QUE FICOU PRONTO (todos os PRs no main)
- Contratos e domain (#81, #88, #102, #147):
  - estados RN-PED-02;
  - validação de preço, desconto, crédito e estoque (RN-PED-03/04);
  - motivos e eventos pedido.pedido.*@1.
  O pedido do Macuxi FDV entra aprovado, e problema de cadastro vira recusa (decisão de 21/11, 23h10). Ficam fora do crédito o pagamento à vista (dinheiro, PIX ou débito com prazo 0; decisões de 23h55 e 00h30) e o cartão de crédito (01h10/01h12).
- API e banco (#110, #135, #150, #210):
  - rotas /v1/pedido com perfil, tenant e licença;
  - trava do cliente e idempotência;
  - recebedor do FDV, consulta para faturar e exportação LGPD.
  O vendedor não vê o documento do cliente, e o pedido do FDV não grava aprovação. O cancelamento não passa com nota em rascunho, em autorização ou em contingência, nem com nota autorizada ainda não aplicada. Com a nota rejeitada pode (decisão de 03h23, R-20261122-032334; #222 e #227 no main).
- Telas do BKO por descritores (#114, #131, #225):
  - lista com filtros e CSV;
  - detalhe com aprovar, recusar, cancelar, revalidar e editar;
  - novo pedido com endereço de entrega, busca de cliente e de produto e total antes de lançar.
  Textos e voz validados pelo design-de-marca: aprovado com ressalvas, sem 🔴.
- Volta da nota:
  - #184 e #194: a nota autorizada atualiza o faturado e publica pedido.pedido.faturado@1 com conta_como_real (decisão de 02h31);
  - #215: a nota cancelada recua o status (migração 0027), sem aviso ao FDV.
- Testes: suíte completa verde na sessão em todos os PRs, com corretor e engenheiro sem 🔴. O teste de concorrência do cancelamento (#216 e #227) está verde.

PREMISSAS ASSUMIDAS
- Cadastro inativo ou filial não emissora no pedido do FDV é recusa.
- O recuo pela nota cancelada não avisa o FDV, porque o Hub não regride.
- Pedido manual sem condição de pagamento vai para análise, e aprovar exige justificativa.

O QUE FICOU PARA DEPOIS (já com os donos, por recado)
- 🟡 visuais do shell, da ui e do sdk: R$ em duas linhas, números alinhados, estouro em 1024, h1 repetido, botões e hover, filtros e seletor de produto (R-20261122-035009, 035012 e 035015).
- Ligação do rotuloDoCliente no seletor (o vendedor não vê o documento), total antes de lançar e erros por campo (R-040317, 040321 e 040324).
- Nova validação de marca depois desses ajustes.
- Perfil do ator no histórico do pedido (R-040327, lote futuro).
- Ligação da porta real (notaEmAbertoSql com notasAutorizadas) no apps/api: está no PR #228 do engenheiro (lote A).
- PR curto do R$ com U+00A0: textoCentavos (texto.ts:8) e asserts independentes do espaço (R-035322 e 040434), aberto agora.

Previsão: 13h48 iniciais, 19h45 com os motivos registrados (decisões de 23h10, 23h55, 00h30, 01h10/01h12 e 02h31, pendências do shell, R-031824 e validação de marca).
