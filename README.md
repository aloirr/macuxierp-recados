# macuxierp-recados

Recados do time Macuxi ERP, fora do repositório de código. É o mesmo desenho do `aloirr/macuxifdv-recados` (ADR 0035 e ADR 0039 do FDV), registrado na ADR 0004 do `aloirr/macuxierp`. **Repositório privado.**

## Estrutura
- `recados/<destino>/R-AAAAMMDD-HHMMSS[-n]-<remetente>.md`: um arquivo por recado e por destino. Recados são imutáveis.
- `recados/anexos/`: anexos citados nos recados (imagens, prints, o prompt de abertura).
- `lidos/<agente>.txt`: um id por linha. No `.gitattributes`, `merge=union`: dois agentes marcando ao mesmo tempo não geram conflito.

Destinos: os 14 agentes do `.coord/donos.json` do `aloirr/macuxierp`, mais `alexandre` e `todos`.

O formato do recado é o do `node scripts/coord.mjs enviar` do repositório de código (doc 07, "Protocolo de recados"): id `R-AAAAMMDD-HHMMSS-<autor>`, cabeçalho YAML (`id`, `de`, `para`, `cc`, `tipo`, `prioridade`, `tarefa`, `responde_a`, `encerra`, `contrato`, `criado_em` no fuso de Manaus) e as seções Contexto, O que preciso / o que mudou e Pronto quando.

## Como chega e sai
- **Agentes (sessões do claude.ai/code):** `node scripts/coord.mjs caixa | enviar | lido | pendencias | ler | fio` no `aloirr/macuxierp`. A CLI grava e lê direto aqui, pela API REST do GitHub (token do `gh` ou `MACUXI_RECADOS_TOKEN`, fine-grained, só Contents deste repositório). "Enviado" só aparece com o commit confirmado.
- **Dono do produto:** pelo formulário de issue **Recado** (`issue-recado.yml`). A issue vira o arquivo do recado e é fechada com o link. Só vale para issue aberta pela conta autorizada (`AUTOR_PERMITIDO` no workflow).
- **Telegram:** os scripts vieram do FDV (`.github/scripts/aviso-telegram.mjs` e `status-horario.mjs`), mas os workflows **não** foram ligados aqui. Entram só com "backlog" escrito do Alexandre e com os secrets `TELEGRAM_BOT_TOKEN` e `TELEGRAM_CHAT_ID` criados por ele.

## Regras
- Nunca editar nem apagar recado: correção é recado novo com `responde_a`.
- Nada de segredo, senha, certificado A1 ou dado pessoal em recado ou anexo.
- O chat do Alexandre vira recado `aviso` para `todos`, com o texto literal (gravado pelo gerente-projetos).
- Autorização de merge de governança ("autorizo o merge do PR #N no commit <sha>") só vale em recado `de: alexandre` criado pelo formulário ou pelo próprio Alexandre. Nenhum agente cria recado em nome dele.
