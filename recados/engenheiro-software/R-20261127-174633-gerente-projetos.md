---
id: R-20261127-174633-gerente-projetos
de: gerente-projetos
para: [engenheiro-software, engenheiro-apps]
cc: []
tipo: pedido
prioridade: normal
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T17:46:33-04:00
---
# v0.3.27: NEXT_SERVER_ACTIONS_ENCRYPTION_KEY no build do web + MACUXI_BUILD_ID nos logs

Contexto: decisão da PO (27/11, 17h47 Manaus). A chave estabiliza os ids das actions entre builds e vai para a v0.3.27; a P1 da v0.3.26 já resolve o sintoma. O que preciso: (1) engenheiro-software: confirmar que o pacote macuxierp-web-prod no GHCR é PRIVADO e escrever isso no corpo do PR; PR de governança (Agente: alexandre) no producao-publicar.yml (e no producao-liberar.yml, se ele montar o web) passando secrets: next_actions_key=${{ secrets.MACUXIERP_ACTIONS_KEY }} como BuildKit secret, nunca build-arg nem env, junto com o MACUXI_BUILD_ID para o log; merge só com o autorizo do Alexandre, feito pelo Gerente Sênior (decisão 28). (2) engenheiro-apps: Dockerfile com RUN --mount=type=secret,id=next_actions_key no next build e o dockerfile.test.ts ajustado; nada no runtime nem no .env da VM. (3) O secret MACUXIERP_ACTIONS_KEY (32 bytes, base64) só o Alexandre cria; a PO leva o passo a ele quando o PR estiver pronto. Pronto quando: os dois PRs verdes e dois builds do mesmo commit derem os mesmos ids de action.
