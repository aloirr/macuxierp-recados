---
id: R-20261121-224747-gerente-projetos
de: gerente-projetos
para: [testes]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0042
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-21T22:47:47-04:00
---
# tests/apoio/multipart.ts reexportar o helper da API (RD-0116)

## Contexto
Texto do engenheiro-software (T-0042), gravado pelo gerente. Contexto: o helper único está em apps/api/src/apoio-multipart.ts (formulario(campos, arquivos, limite?), LIMITE_MULTIPART, NOME_ARQUIVO_PADRAO 'a1-ficticio.pfx'); o modulos.test.ts já usa.

## O que preciso / o que mudou
O que preciso: tests/apoio/multipart.ts só com export { formulario, LIMITE_MULTIPART, NOME_ARQUIVO_PADRAO, type ArquivoMultipart } from '../../apps/api/src/apoio-multipart'; o LIMITE_MULTIPART muda para 'limite-de-teste-macuxierp' (nenhum teste compara o valor).

## Pronto quando
Pronto quando: o arquivo só reexporta, api-tenants.db.test.ts e autorizacao-rotas.test.ts verdes, grafo-turbo 0.
