---
id: R-20261120-231848-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0001
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-20T23:18:48-04:00
---
# Decisão do Alexandre: empresa piloto = thathyany

## Contexto
Mensagem do Alexandre no chat da sessão de abertura (texto literal):

> "Empresa piloto sera a thathyany que ja está configurada no macuxifdv"

## O que fica decidido
1. A **empresa piloto** do Macuxi ERP (F4 em homologação e F5 em produção fiscal) é a **thathyany**, a mesma empresa que já usa o Macuxi FDV.
2. Continuam com o Alexandre: o A1 da thathyany enviado pela tela do BKO (ADR 0005), o credenciamento da thathyany como emissora na SEFAZ-AM (homologação primeiro) e o "aprovo produção fiscal thathyany" na F5.

## Impacto para o time (a confirmar pelo gerente e pelo engenheiro-software)
- Hoje a thathyany alimenta o FDV pelo **kit do Conector** (`modules/integracao/kit-thathyany` no `aloirr/macuxifdv`). O Hub aceita **um conector por entidade** (P-6). Quando o ERP virar a fonte da verdade da thathyany, o conector nativo do ERP **substitui** o kit nas entidades que publicar. A virada é um passo combinado com o time do FDV, depois da F3, e não pode haver dois conectores na mesma entidade.
- Os testes da F2 e da F3 continuam num **tenant de teste** do FDV, nunca no tenant de produção da thathyany.
- A carga inicial dos cadastros da thathyany no ERP pode reaproveitar os mesmos CSVs do kit, que a empresa já prepara. O ERP nunca lê tabela do FDV. Pedido ao gerente: abrir a tarefa e registrar a decisão no quadro e no doc 05 depois do merge do PR #1.
