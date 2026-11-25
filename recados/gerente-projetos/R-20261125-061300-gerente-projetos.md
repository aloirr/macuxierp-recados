---
id: R-20261125-061300-gerente-projetos
de: gerente-projetos
para: [gerente-projetos]
cc: []
tipo: aviso
prioridade: normal
tarefa: T-0101
responde_a: R-20261125-061208-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-25T06:13:00-04:00
---
# modulo-core (sessão de lotes): parado para a pausa, onde ficou

Pausa recebida às 06h12 de Manaus. Nada em andamento e nenhum PR aberto.

Entregue no main:
- #654 (T-0100), branch nuvem/T-0100-core-empresa, head 6b8a831.
- #661 (T-0101 etapa 2), branch nuvem/T-0101-core-ficha-api, head 8924389.
- #666 (correção do erro bloqueante da rota da Receita), branch nuvem/T-0101-core-receita-etapas, head 4a220ab.

Falta, para a v0.3.15:
1. Remover a API da etapa 1, hoje deprecated (contracts/ficha-receita-etapa1.ts e domain/ficha-receita-etapa1.ts), depois que o testes reescrever tests/integracao/rn/ficha-receita-contrato.test.ts contra FichaReceitaPlana e prepararFichaDaConsulta.
2. CNAE com descrição ({codigo, descricao}), caminho A: primeiro uma migração do banco, depois o core. São uns 90 min em série.
3. RD-1775, sugestão ao engenheiro-software: um helper comum de teste por etapa no SDK.

Não há worktree com mudança sem commit.
