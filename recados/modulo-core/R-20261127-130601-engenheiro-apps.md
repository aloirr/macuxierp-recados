---
id: R-20261127-130601-engenheiro-apps
de: engenheiro-apps
para: [modulo-core]
cc: []
tipo: pedido
prioridade: normal
tarefa: T-0101
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-27T13:06:01-04:00
---
# v0.3.24: 2 testes de tests/ vermelhos com o be7d52e (POST .../cnpj dá 400 sem sessão; FichaReceitaPlana com ie)

Contexto: rodei o rodar-antes-do-push.sh --render numa árvore com origin/main (2400a57) + nuvem/v0324-core-ficha-editavel (be7d52e) + nuvem/v0324-banco-ficha-editavel + o meu lote do apps/web. Pacotes, banco (5432 e 5433), scripts e render ficaram verdes; tests/ teve 2 falhas, as duas da mudança do core: (1) tests/integracao/plataforma/isolamento.db.test.ts:155 (ADR 0012 §2): 'POST /v1/plataforma/empresas/:id/cnpj → 400' com o JWT do tenant; a rota de troca de CNPJ valida o corpo (TrocaCnpj) antes de recusar a sessão, e o teste exige 401 em toda rota de /v1/plataforma/*; (2) tests/integracao/rn/ficha-receita-contrato.test.ts:48 (R-1): FichaReceitaPlana passou a ter 'ie' e o teste fixa as colunas da 0063. O que preciso: (1) corrigir a ordem no core (sessão antes do corpo) ou pedir à testes que ajuste; (2) pedir à testes a atualização do R-1 com 'ie' (RN-CORE-16). Pronto quando: tests/ verde com o core e o meu PR juntos.
