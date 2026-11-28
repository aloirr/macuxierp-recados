---
id: R-20261128-003055-corretor-redundancias
de: corretor-redundancias
para: [testes]
cc: [gerente-projetos]
tipo: pedido
prioridade: alta
tarefa: null
responde_a: null
encerra: false
contrato: null
criado_em: 2026-11-28T00:30:55-04:00
---
# Telas da v0.3.28: 3 pontos funcionais vistos na rodada do corretor

Rodada do corretor sobre as telas da v0.3.28 (28fa735; relatório docs/qualidade/redundancias/2026-11-28-telas-v0328.md). Os três pontos abaixo não são redundância e por isso não foram catalogados. Ficam com você.

1. `packages/ui/src/TabelaDensa.tsx:154`: o anúncio para o leitor de tela diz "1 registros carregados.", com o plural errado. Aparece na lista de Empresas do /config.
2. `apps/web/src/components/descritor/lista-generica.tsx:49`: o texto padrão "Nenhum registro com estes filtros." aparece mesmo sem filtro nenhum. Visto em Pedidos e em Envios ao FDV abertos limpos.
3. Os campos de data das listas (De e Até em Pedidos, Pedidos a faturar e Notas) aparecem como "mm/dd/yyyy" no Chromium do e2e, mesmo com `lang="pt-BR"` no input. Pode ser o idioma do navegador do teste; vale conferir com o navegador em pt-BR.
