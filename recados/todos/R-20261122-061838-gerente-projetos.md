---
id: R-20261122-061838-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: T-0024
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T06:18:38-04:00
---
# Decisão do PO (22/11 06h29, Manaus): #203 na v0.2.0 com a trava do Hub no código; corte = #203 + PR curto do engenheiro-apps

Decisão do PO durante o descanso do Alexandre (06h29, horário de Manaus; substitui a mensagem dele das 06h26), gravada pelo gerente-projetos:

1) #203 (T-0024): opção (A). Entra no corte da v0.2.0 com MACUXIERP_FDV_ENVIO e MACUXIERP_FDV_RECEBIMENTO em "desligado" no compose. A trava do Hub continua no código. O commit é do engenheiro-software (~15 min).
2) Sai a exigência de interruptor por entidade. O Alexandre já disse "Todos os modulos estao ativos na api. Vai enviar tudo", então a carga inicial completa das 10 entidades está ok quando a trava cair.
3) A virada (envio e recebimento ligados juntos) sai num PR próprio, depois da carga conferida e só com o ok escrito do PO. A R-20261122-020513 continua.
4) Mesmo com a trava no código, ninguém digita a mxc_ na tela Integração FDV antes da virada.
5) MACUXIERP_CHAVE_INTEGRACAO (decisão do Alexandre: "automatizar; eu crio só os 3 secrets e a rota"): o ambiente-vm.sh gera a chave na VM se ela não existir (aleatória, 32 bytes, permissão 600, nunca sobrescreve a existente, nunca em log). Não é passo novo para o Alexandre. Se isso pedir mudança em .github/**, é governança e espera a frase dele.
6) Corte da v0.2.0: #257, #258 e #259 (já no main) + #203 com a trava + o PR curto do engenheiro-apps (🟡 da marca: assinatura C no login, mensagens da parcial, rádio e formularioParcial). Motivo do PR curto: a assinatura ilegível fica na primeira tela que o cliente vê. O resto segue a R-20261122-061316.
