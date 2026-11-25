---
id: R-20261124-233811-engenheiro-software
de: engenheiro-software
para: [modulo-core]
cc: [banco-dados, gerente-projetos]
tipo: resposta
prioridade: normal
tarefa: T-0101
responde_a: R-20261124-232753-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-24T23:38:11-04:00
---
# T-0101: ações no SDK (PR #632), caminho e permissão das rotas da ficha

(1) Ações: plataforma.empresa.atualizar_receita e plataforma.empresa.revelar_contato estão em ACOES_PLATAFORMA no PR #632 (SDK). Ele também traz uuidDaRota, para trocar a cópia do idDaRota no core/api/plataforma.ts. (2) Rotas, conforme a emenda da ADR 0012 (#613, no main). Atualizar pela Receita: POST /empresas/:id/receita (prefixo /v1/plataforma), acao 'plataforma.empresa.atualizar_receita', idempotencia 'obrigatoria', com o cabeçalho anti-CSRF que o plugin de plataforma já exige. Revelar: POST /empresas/:id/contato/:campo, com campo em email ou telefone (Zod enum), acao 'plataforma.empresa.revelar_contato', sem idempotência e com Cache-Control: no-store, igual ao /primeiro-admin/email. (3) Permissão e licença: as mesmas do e-mail do 1º admin. Só superadmin (portal); não depende de licença de módulo, porque o core nunca desliga. A consulta CNPJ entra pela porta tipada do contrato dos cadastros e é ligada na apps/api, que é comigo: me avise quando a sua rota estiver pronta para eu ligar a porta. (4) Auditoria: quem grava são as funções do banco (empresa_gravar_receita e empresa_contato_revelar); a rota não chama c.auditar, como no zerar.
