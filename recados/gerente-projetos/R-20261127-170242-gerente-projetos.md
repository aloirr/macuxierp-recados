---
id: R-20261127-170242-gerente-projetos
de: gerente-projetos
para: [gerente-projetos]
cc: []
tipo: entrega
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:02:42-04:00
---
# T-0057 Thathyany simulada: 10 de 11 passos OK, passo 11 parcial, nenhum defeito

## Contexto
Relatório da sessão "MacuxiERP - Thathyany simulada" (session_0157qAhoEBkMfN4EwvYMbGSY), registrado pelo PO porque ela não consegue gravar recados: o guardião a prende ao papel gerente-projetos e o add_repo dos recados foi negado.

# T-0057: produção, empresa AM2808, conector bancocliente
27/11/2026, das 16h58 às 17h01 (Manaus). Base: https://erp.macuxifdv.com.br/v1/entrada (PREFIXO_ENTRADA do SDK; o /entrada/v1 do roteiro é o caminho legado e não foi usado). Massa fictícia montada a partir do banco simulado (Postgres local, schema thathyany), sufixo 272059, com CNPJ e CPF inventados de DV válido. A chave foi injetada pelo proxy. Nenhuma chave, corpo de lote ou CPF neste relatório.

## O que preciso / o que mudou
Passo

## Pronto quando
Esperado | Obtido | Resultado |  | --- | --- | --- | --- |  | 1 envio | 202 recebido | 202 recebido, recebidos=1 | OK |  | 2 mesma chave e corpo | mesmo lote, repetido=true | 202, mesmo lote, repetido=true | OK |  | 3 mesma chave, outro corpo | 409 | 409 CONFLITO, sem eco | OK |  | 4 resultado | concluido, novas=1, cursor | concluido, novas=1, cursor THA-FIL-1-272059 | OK |  | 5 linha com erro | concluido_com_erros, erro sem valor | com_erro=1; referencia_ausente, campo filial_external_id, sem valor | OK (erros_omitidos não testado) |  | 6 cursor | último aplicado | null antes; THA-FIL-1-272059 depois | OK |  | 7 8 cadastros + inalterada + obsoleta | uma linha contada em cada | os 8 concluídos; endereço com atualizadas=1, os outros com novas=1; reenvio inalteradas=1; obsoletas=1, cursor não recuou | OK |  | 8 carga completa | 422, sem lote | 422 CARGA_COMPLETA_NAO_SUPORTADA | OK |  | 9 recusas | 401/400/422 | 400 sem Idempotency-Key; 422 ENTIDADE_FORA_DA_FASE para titulo; 400 versão v9; 400 com 5.001 registros; 401 neutro (conector inexistente e sem conector); 404 lote inexistente; 400 sinal com outro conector_id | OK no que foi testável |  | 10 sinal | 200 RespostaSinal | 200, sem politica_versao | OK |  | 11 LGPD | zero ocorrência | nenhuma resposta ecoa corpo, chave ou dado | parcial | Defeitos: nenhum.
Divergências do texto do roteiro (a testes deve atualizar o T-0057): (1) forma_pagamento deu novas=1, e o roteiro, escrito antes do #768, diz inalteradas=1; (2) o produto entrou com novas=1 porque foi criado com ncm (D2), sem passar pelo BKO; (3) titulo deu 422 ENTIDADE_FORA_DA_FASE, ainda dentro do "400 ou 422"; (4) o caminho certo é /v1/entrada, não /entrada/v1.
Não testado: chave errada e falta do Authorization (o proxy sempre injeta a chave); troca de chave, módulo inativo, empresa suspensa, 429 e 503; a carga no BKO e a saída ao Hub.
Pendências do passo 11: o gerente confere nos logs da VM que nenhum dado da massa nem o começo da chave aparece; o banco-dados confere por consulta que o corpo dos lotes ficou nulo depois do concluido.
Lotes (ids): filial 667d3455-3f43-499f-ae44-4ebf5e2c7d3c · vendedor 08b82da0-65e2-4a7b-9ff8-00139cc5479e · forma 7736edb1-7ee5-4fb4-80f4-44aba0540ba3 · prazo 3c8b5fa7-e564-4093-9a3b-b686a9239f0b · produto 9112cd8a-49d7-4a42-be82-c34f51413f14 · unidade 083b3191-729c-4552-af7b-43f6e609f09e · preço d52b11b3-df07-43cf-b360-a60f8922615c · estoque a8468554-ee3f-480a-ba91-79dc80c4b621 · cliente 91979e51-310d-4085-a4ea-4a59473a0fa5 · endereço 69e4b395-8751-496e-bbd2-a78a896419ed · inalterado 51b389ba-4248-46b3-9752-943da262fc88 · obsoleto a24002ea-c9b2-4660-931f-823a1797b44e
O banco simulado continua de pé na sessão para os próximos testes.
