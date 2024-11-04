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

-- Exercício 1.3
DO $$
DECLARE
    temp_celsius NUMERIC(5, 2);
    temp_fahrenheit NUMERIC(5, 2);
BEGIN
    temp_celsius := random() * 10 + 20;
    temp_fahrenheit := temp_celsius * 9 / 5 + 32;
    RAISE NOTICE 'Temperatura: %°C = %°F', temp_celsius, temp_fahrenheit;
END $$;
