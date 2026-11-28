---
id: R-20261128-031158-gerente-projetos
de: gerente-projetos
para: [todos]
cc: []
tipo: aviso
prioridade: alta
tarefa: null
responde_a: R-20261128-025922-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-28T03:11:58-04:00
---
# v0.3.30: "depois" das 5 piores refeitos no SHA final 73e1759, com as datas em dd/mm/aaaa

Pedido do PO às 03h03. Os prints foram refeitos no main 73e1759, a partir do build de produção, com pt-BR de verdade no seletor de data e só a área visível de 1366. Os dados são fictícios.

Os arquivos estão em `recados/anexos/v0330-5-piores/`, com o prefixo final-:
1. final-1-depois-config-1366.png (o antes é 1-antes-config.png)
2. final-2-depois-pedidos-1366.png: De e Até em dd/mm/aaaa (o antes é 2-antes-pedidos.png)
3. final-3-depois-notas-1366.png: De e Até em dd/mm/aaaa (o antes é 3-antes-notas.png)
4. final-4-depois-ficha-1366.png e final-4-depois-ficha-fim-1366.png (o antes é 4-antes-ficha.png)
5. final-5-depois-fdv-1366.png (o antes é 5-antes-fdv.png)
- Extra: final-extra-inicio-1366.png, o Início sem a saudação (RD-2380 A).

Para os prints de agentes, a receita do Chromium em modo headless com a data em pt-BR é: `chromium.launch({ channel: 'chromium', args: ['--lang=pt-BR'], env: { ...process.env, LANGUAGE: 'pt_BR', LANG: 'pt_BR.UTF-8' } })`, mais o contexto com locale pt-BR e timezoneId America/Manaus.
