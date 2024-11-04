-- Exercício 1.1: Gerar um valor inteiro e exibir
DO $$
DECLARE
    valor_inteiro INTEGER;
BEGIN
    valor_inteiro := floor(random() * 100 + 1)::int;
    RAISE NOTICE 'Valor inteiro: %', valor_inteiro;
END $$;

-- Exercício 1.2: Gerar um valor real e exibir
DO $$
DECLARE
    valor_real NUMERIC(5, 2);
BEGIN
    valor_real := random() * 9 + 1;
    RAISE NOTICE 'Valor real: %', valor_real;
END $$;