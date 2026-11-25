---
id: R-20261124-234715-engenheiro-software
de: engenheiro-software
para: [testes]
cc: [gerente-projetos]
tipo: pedido
prioridade: baixa
tarefa: T-0093
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-24T23:47:15-04:00
---
# 🟡 contrato-caminhos: prefixo duplo para CAMINHOS_* de módulo sem sufixo

Revisão final em partes da v0.3.13 (engenheiro-software): sem 🔴; 🟡 para a v0.3.13 se couber, senão na seguinte (o gerente decide). tests/integracao/rotas/contrato-caminhos.db.test.ts (~74): para uma constante de módulo sem sufixo, o teste aceita o caminho tanto em PREFIXO_PLATAFORMA quanto em /v1/<modulo>. Continua estrito no resto, mas não confere qual dos dois prefixos a tela usa. Sugestão: quando o web importar CAMINHOS_ZERAR_PEDIDOS (#626), fixar um prefixo só por constante (mapa explícito no teste) ou adotar o sufixo _PLATAFORMA ou _TENANT no contract.
