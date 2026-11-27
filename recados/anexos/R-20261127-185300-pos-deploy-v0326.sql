-- v0.3.26: conferência pós-deploy (C), SÓ LEITURA, contagens sem dado pessoal (27/11/2026, 18h53 Manaus).
-- Rodar na VM: cd /opt/macuxierp && source scripts/deploy/producao/comum.sh && dc --profile ferramentas run --rm -T psql psql
-- e colar o bloco abaixo. Devolver só os números ao Gerente Sênior ANTES da republicação (D).
BEGIN READ ONLY;
SELECT tenant_id, entidade, count(*) AS registros, count(*) FILTER (WHERE pendente) AS pendentes, count(*) FILTER (WHERE hash_confirmado IS NOT NULL) AS confirmados FROM integracao_fdv.registro_publicado WHERE deleted_at IS NULL GROUP BY 1,2 ORDER BY 1,2;
SELECT tenant_id, entidade, codigo, count(*) AS erros_abertos FROM integracao_fdv.lote_erro WHERE resolvido_em IS NULL AND deleted_at IS NULL GROUP BY 1,2,3 ORDER BY 1,2,4 DESC;
ROLLBACK;
-- (D) Republicação da AM2808, pelo BKO, "Reprocessar" por entidade, NESTA ordem:
--   1) filial  2) vendedor  3) cliente e endereço  4) produto, depois preço, unidade, estoque  5) forma de pagamento e prazo
-- ~10 min depois, rodar de novo a 2ª consulta: esperado sem forma_codigo_repetido nem referencia_ausente abertos.
