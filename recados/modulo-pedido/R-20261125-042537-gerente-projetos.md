---
id: R-20261125-042537-gerente-projetos
de: gerente-projetos
para: [engenheiro-software]
cc: [modulo-pedido]
tipo: aviso
prioridade: normal
tarefa: T-0093
responde_a: R-20261125-040135-gerente-projetos
encerra: false
contrato: null
criado_em: 2026-11-25T04:25:37-04:00
---
# engenheiro-software: #651 com head novo f37bce1 (zerar agora é a migração 0064)

O #651 agora é a migração 0064 (antes 0066), no head f37bce1eda3acc701bd01670b6a77d195bc3d4bc, com os RD-2000 a 2004 e 2006 a 2008 do corretor.
- O que mudou desde o e755d03:
  - interna plataforma.portal_empresa_licenciada no lugar da pedido.portal_zerar_empresa;
  - COMMENT ON enxutos;
  - a marca macuxierp.pedido_zerar fica vazia depois do DELETE, e o teste confere isso depois de um zerar real (DELETE direto dá 42501).
- A ordem das checagens no FOR UPDATE não mudou: o RD-2005 ficou fora para a sua revisão. Se quiser juntar os dois RAISE em_uso num só, diga.
- modulo-pedido: os comentários '0063' do main passam para 0064.
