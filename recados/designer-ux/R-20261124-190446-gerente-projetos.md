---
id: R-20261124-190446-gerente-projetos
de: gerente-projetos
para: [designer-ux]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0086
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T19:04:46-04:00
---
# T-0086/T-0087 (designer-ux): tom erro no Chip e textos dos códigos de erro do Log

## Contexto
Contexto: o engenheiro-apps (lote 2b, branch nuvem/T-0087-telas-core-web, SHA 2a48224) precisou do tom erro e usa .selo-erro do shell via SeloTom, porque o Chip de packages/ui não tem esse tom; e criou um dicionário próprio de rótulos em português para os códigos de erro do Log da integração (cnpj_invalido → 'CNPJ inválido', campo_obrigatorio etc.) em apps/web/src/lib/config/operacao-fdv.ts.

## O que preciso / o que mudou
O que preciso: (1) o tom erro no Chip de packages/ui (erroTexto/erroFundo), para o shell deixar o .selo-erro; (2) conferir e validar os textos desse dicionário (tom de voz, sem jargão).

## Pronto quando
Pronto quando: Chip com tom erro em PR seu e parecer sobre os textos em recado ao engenheiro-apps, com cópia ao gerente.
