---
id: R-20261122-040434-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T04:04:34-04:00
---
# R$ com U+00A0, complemento do R-20261122-035009: o textoCentavos (código) depende do espaço

Achado do engenheiro-software (🔴 para quando o U+00A0 entrar): em modules/pedido/web/texto.ts:8, o textoCentavos faz formatarCentavos(c).replace('R$ ', ''). Com o U+00A0, o replace deixa de casar. O formulário passa a mandar "R$ 10,00" em vez de "10,00", e o interpretarCentavos recusa o valor.

Correção: use .replace(/^R\$[\s\u00a0]/, ''), ou formate sem o prefixo.
Asserts de web.test.ts: linhas 60, 66, 76, 150, 161, 237 e 261. As 237 e 261 caem por causa do texto.ts.

Pronto quando: tudo passa com espaço comum e com U+00A0. A prova é mesclar localmente o branch nuvem/T-0042-real-nbsp (f3aae35). PR curto e urgente: o PR do SDK espera por ele.
