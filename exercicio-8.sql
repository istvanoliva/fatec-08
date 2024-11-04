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

-- Exercício 1.4

DO $$
DECLARE
    a NUMERIC(5, 2) := random() * 9 + 1;
    b NUMERIC(5, 2) := random() * 9 + 1;
    c NUMERIC(5, 2) := random() * 9 + 1;
    delta NUMERIC(5, 2);
BEGIN
    delta := b * b - 4 * a * c;
    RAISE NOTICE 'Valores: a = %, b = %, c = %. Delta = %', a, b, c, delta;
END $$;

-- Exercício 1.5

DO $$
DECLARE
    numero INTEGER := floor(random() * 100 + 1)::int;
    antecessor NUMERIC(5, 2);
    sucessor NUMERIC(5, 2);
BEGIN
    antecessor := power(numero - 1, 1.0 / 3);
    sucessor := sqrt(numero + 1);
    RAISE NOTICE 'Número: %, Raiz cúbica do antecessor: %, Raiz quadrada do sucessor: %', numero, antecessor, sucessor;
END $$;

-- Exercício 1.6

DO $$
DECLARE
    largura NUMERIC(5, 2) := random() * 9 + 1;
    comprimento NUMERIC(5, 2) := random() * 9 + 1;
    preco_m2 NUMERIC(5, 2) := random() * 10 + 60;
    area NUMERIC(5, 2);
    valor_total NUMERIC(5, 2);
BEGIN
    area := largura * comprimento;
    valor_total := area * preco_m2;
    RAISE NOTICE 'Largura: %, Comprimento: %, Área: %, Preço/m²: %, Valor total: %', largura, comprimento, area, preco_m2, valor_total;
END $$;

-- Exercício 1.7

DO $$
DECLARE
    ano_nascimento INTEGER := floor(random() * 21 + 1980)::int;
    ano_atual INTEGER := floor(random() * 11 + 2010)::int;
    idade INTEGER;
BEGIN
    idade := ano_atual - ano_nascimento;
    RAISE NOTICE 'Ano de nascimento: %, Ano atual: %, Idade: %', ano_nascimento, ano_atual, idade;
END $$;
