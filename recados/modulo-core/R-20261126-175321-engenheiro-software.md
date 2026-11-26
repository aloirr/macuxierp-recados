---
id: R-20261126-175321-engenheiro-software
de: engenheiro-software
para: [modulo-core, engenheiro-apps]
cc: [gerente-projetos]
tipo: resposta
prioridade: alta
tarefa: T-0111
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-26T17:53:21-04:00
---
# T-0111: decisão de segurança da trava e do bloqueio (memória, 423 idêntico, temporária depois do IP)

Decisão de segurança da T-0111 (engenheiro-software), sobre o desenho do core. Está aprovado, com as decisões e condições abaixo.

**1. Trava por empresa+e-mail: EM MEMÓRIA, no molde do limite-ip.**
- É o `LimitePorChave` com a chave `chaveEmpresaEmail` (SHA-256), igual ao do Esqueci. O e-mail em claro nunca fica no Map, nunca vai a log e nunca vai ao banco.
- Por que memória: é uma API por VM (ADR 0003, o mesmo motivo do limite-ip). No banco, cada tentativa com e-mail inexistente seria uma escrita, e isso abre um vetor de carga e um registro de e-mails que não são clientes (LGPD).
- A trava REAL da conta que existe continua no banco (`falhas_login` e `bloqueado_ate`), como hoje.
- A resposta é bloqueada se a memória estourou OU se o banco diz travada. Os limites da memória são os mesmos da conta (`maxFalhas` 5 e `travaMinutos`) e contam só as falhas.
- Risco aceito: um reinício da API zera a memória e não zera o banco. Só quem reinicia a VM provoca isso, e o atacante não consegue. Não é vetor de enumeração.

**2. Resposta idêntica em todos os casos.** Vale para tenant e superadmin, e para e-mail existente ou não.
- `CONTA_BLOQUEADA` com HTTP **423** (aprovado). Corpo e cabeçalhos são iguais em todos os casos, e `detalhes.recuperar` é o mesmo texto fixo.
- **Sem tempo restante e sem contagem de tentativas** na resposta. O `bloqueado_ate` real de cada conta é diferente do da memória, e mostrar o tempo vazaria qual conta existe. Hoje o 429 "Acesso travado por N minutos após 5 tentativas" só sai para conta que existe, e isso é enumeração. O 423 substitui esse 429 no tenant e no superadmin.
- O tempo também tem de ser igual. No caminho do bloqueado ainda roda a conferência contra o hash falso (`apoio-login.ts`). O 423 nunca pode sair mais rápido que o 401.
- A trava por IP continua 429 "Muitas tentativas" e é conferida ANTES de tudo.

**3. A temporária fura a trava da conta, com limites.**
- Ela é conferida antes da trava da conta e da trava da memória, mas DEPOIS da trava por IP. O IP travado continua bloqueando tudo, para a temporária não virar um caminho de força bruta.
- Temporária certa e vigente: zera `falhas_login` e `bloqueado_ate` e a chave da memória, e não soma no IP.
- Temporária errada ou vencida: conta como falha comum (banco, memória e IP).
- A temporária continua de uso único e com validade curta, como hoje.

**4. `desbloqueou: true`** só na resposta de SUCESSO do login com a temporária. Nunca vai na falha, para não confirmar a conta.

**5. O Esqueci continua neutro** (202, igual para todos). O e-mail de "conta bloqueada", se houver, vai pelo `envio-apos-resposta` só para conta que existe, depois da resposta, e sem mudar o corpo nem o tempo.

**6. Testes que eu exijo:**
- e-mail inexistente e existente bloqueados dão o mesmo status, o mesmo corpo e os mesmos cabeçalhos, no tenant e no superadmin;
- a temporária certa com a conta travada entra, zera a trava e devolve `desbloqueou: true`;
- a temporária com o IP travado dá 429;
- a temporária errada soma falha;
- nada de e-mail em log nem no Map, conferido pelo teste do pino.

Os caminhos da apps/api (servico.ts, esqueci.ts, senha-temporaria.ts, limite-ip.ts e envio-apos-resposta.ts) são meus. Ligo quando as funções puras do core chegarem.
