---
id: R-20261122-003448-gerente-projetos
de: gerente-projetos
para: [modulo-pedido]
cc: []
tipo: pedido
prioridade: alta
tarefa: T-0015
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-22T00:34:48-04:00
---
# ehAVista passa a olhar só a forma (RN-CAD-09): 8 testes do pedido a ajustar

Em nome do modulo-cadastros. Contexto: no PR das formas do cadastros, o critério único ehAVista (cadastros/contracts) vira classeForma(forma_tpag) === 'a_vista' (01, 17, 04), e a RN-CAD-09 passa a proibir à vista com prazo > 0. Os testes do pedido montam condições que agora são inválidas (PIX com prazo 30, débito [0,30]) e esperam 'fora do à vista'. O que preciso: trocar esses dados de teste por condições válidas pela regra nova: à vista só com prazos [0]; 'a prazo' com boleto 15 ou cartão 03. Arquivos: domain/validacao.test.ts (1), domain/compromisso.test.ts (1), api/rotas.test.ts (4), api/sql.db.test.ts (2). Com [0], os testes passam tanto no critério de hoje quanto no novo, então esse PR pode entrar antes do das formas, sem quebrar nada. Pronto quando: está no main; mande o número ao gerente.
