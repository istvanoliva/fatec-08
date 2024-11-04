-- Exercício 1.1: Gerar um valor inteiro e exibir
DO $$
DECLARE
    valor_inteiro INTEGER;
BEGIN
    valor_inteiro := floor(random() * 100 + 1)::int;
    RAISE NOTICE 'Valor inteiro: %', valor_inteiro;
END $$;
