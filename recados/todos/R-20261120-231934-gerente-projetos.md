---
id: R-20261120-231934-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0001
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-20T23:19:34-04:00
---
# Decisão do Alexandre: ADR 0002 opção A aprovada; F1 abre depois do merge do PR #1

## Contexto
Mensagem do Alexandre no chat da sessão de abertura (texto literal), em resposta ao resumo com as recomendações (merge do PR #1, biblioteca NF-e opção A, empresa piloto):

> "Aprovado. Mande os recados e abra as sessões"

## O que fica decidido
1. **Biblioteca NF-e (ADR 0002): opção A aprovada.** Módulo próprio em TypeScript atrás da porta `EmissorNFe`, portando a lógica do sped-nfe sob a opção MIT (com atribuição). O sinete (Apache-2.0) é testado no spike da T-0018 como atalho. A T-0018 deixa de estar bloqueada por essa decisão. Ainda depende do A1 de homologação da thathyany e do credenciamento na SEFAZ-AM. O engenheiro-software registra a aprovação na ADR 0002 (status "aceita", com o id deste recado) no primeiro PR dele da F1.
2. **Empresa piloto:** a thathyany (R-20261120-231848-gerente-projetos).
3. **Merge do PR #1 (governança):** pela regra 5 do rito (doc 07), aprovação genérica não vale para governança. O merge espera a frase exata "autorizo o merge do PR #1 no commit bbdcfe9848f655f043471ea5f25d07ee15504e99", pedida ao Alexandre nesta mesma conversa.
4. **Sessões da F1:** abrem logo depois do merge do PR #1, pela ordem do doc 05.
