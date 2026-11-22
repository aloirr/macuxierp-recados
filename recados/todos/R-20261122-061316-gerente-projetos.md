---
id: R-20261122-061316-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: T-0021
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:13:16-04:00
---
# Decisão de versão do PO (22/11 06h12, Manaus): v0.1.1 sai; corte da v0.2.0

Decisão do PO durante o descanso do Alexandre (texto do PO, 22/11 06h12, horário de Manaus), gravada pelo gerente-projetos:

1) A v0.1.1 deixa de existir como versão separada. O #203 (conector e recebimento) entra no main assim que tiver CI verde e revisão sem 🔴, e vai junto na v0.2.0. Com o main de hoje, não há como tirar uma v0.1.1 sem o faturamento.
2) Sequência: v0.1.0 (a tag já existe; sobe quando o Alexandre colar a chave; é nela que ele faz a carga dos CSVs) → v0.2.0 → v0.2.1 (contingência e as limpezas de RD).
3) Corte da v0.2.0: o main fica congelado para "só v0.2.0". Entram o #257 (shell B), o #258 (faturamento: fuso, números e parcial), o #259 (PR curto do SDK) e o #203. O SHA de corte é o merge do último desses quatro. Os PRs da v0.2.1 ficam ABERTOS, sem merge, até o liberar da v0.2.0. Correção de 🔴 achada no liberar entra na v0.2.0.
4) Antes de levar o deploy da v0.2.0 ao Alexandre, o PO espera do gerente a confirmação por escrito de que, publicada a v0.2.0, nada escreve no Hub do FDV enquanto ninguém digitar a chave mxc_ na tela Integração FDV (trava R-20261122-020513), e de que o faturamento só aparece com a bandeira ligada na thathyany.
5) O liberar da v0.2.0 pode rodar quando o corte fechar. A issue, o "aprovado v0.2.0" e o "aprovo deploy v0.2.0" esperam o Alexandre.

Para os donos: não abram PR de merge no main fora desses quatro sem falar com o gerente. Trabalho da v0.2.1 (lote 4 de contingência, limpezas de RD, PRs curtos de marca) continua em branch e PR aberto, sem merge.
