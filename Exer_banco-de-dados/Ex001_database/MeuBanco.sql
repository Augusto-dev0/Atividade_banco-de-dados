-- =============================================
-- TAREFINHA PARA CASA - COMPLETA
-- Aluno: Luiz Augusto Correia Freire
-- Número da matricula: 01807040
-- =============================================

-- 1. Tabela Postal
CREATE TABLE postal (
    CEP VARCHAR(10) PRIMARY KEY,
    Localidade VARCHAR(100) NOT NULL
);

-- 2. Tabela Empregado
CREATE TABLE empregado (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Sobrenome VARCHAR(50) NOT NULL,
    Sexo VARCHAR(20),
    Idade INT,
    Salario DECIMAL(10, 2),
    Telefone VARCHAR(20),
    Cargo VARCHAR(100),
    Setor VARCHAR(50),
    CEP VARCHAR(10),
    FOREIGN KEY (CEP) REFERENCES postal (CEP)
);

-- 3. Tabela Despesa
CREATE TABLE despesa (
    Codigo INT PRIMARY KEY,
    Descritivo VARCHAR(100) NOT NULL
);

-- 4. Tabela Comissao
CREATE TABLE comissao (
    Valor DECIMAL(10, 2) NOT NULL,
    Matricula INT NOT NULL,
    Codigo INT NOT NULL,
    FOREIGN KEY (Matricula) REFERENCES empregado (Matricula),
    FOREIGN KEY (Codigo) REFERENCES despesa (Codigo)
);

-- =============================================
-- INSERÇÃO DOS DADOS
-- =============================================

INSERT INTO
    postal (CEP, Localidade)
VALUES ('1000', 'LISBOA'),
    ('1100', 'LISBOA'),
    ('1200', 'LISBOA'),
    ('1500', 'LISBOA'),
    ('2000', 'SANTAREM'),
    ('2300', 'TOMAR'),
    ('3000', 'COIMBRA'),
    ('4000', 'PORTO'),
    ('9000', 'FUNCHAL');

INSERT INTO
    empregado (
        Matricula,
        Nome,
        Sobrenome,
        Sexo,
        Idade,
        Salario,
        Telefone,
        Cargo,
        Setor,
        CEP
    )
VALUES (
        242,
        'Antônio Carlos',
        'Dias',
        'Masculino',
        43,
        7400.00,
        '789654',
        'Programador de Computador',
        'TI',
        '1500'
    ),
    (
        205,
        'Célia',
        'Morais',
        'Feminino',
        26,
        17000.00,
        '123456',
        'Gerente de TI',
        'Gerência',
        '1100'
    ),
    (
        232,
        'Florinda',
        'Simões Santos',
        'Feminino',
        35,
        14700.00,
        NULL,
        'Gerente Financeiro',
        'Gerência',
        '4000'
    ),
    (
        237,
        'Isabel',
        'dos Santos Espada',
        'Feminino',
        28,
        8600.00,
        NULL,
        'Analista de Sistemas',
        'TI',
        '1100'
    ),
    (
        249,
        'José Antônio',
        'da Silva Santos',
        'Masculino',
        18,
        21000.00,
        NULL,
        'Diretor de TI',
        'Diretoria',
        '1500'
    ),
    (
        214,
        'Nascimento Augusto',
        'Bezerra',
        'Masculino',
        35,
        22000.00,
        '456123',
        'Diretor Financeiro',
        'Diretoria',
        '2300'
    ),
    (
        225,
        'Paulo',
        'Viegas',
        'Masculino',
        32,
        9500.00,
        NULL,
        'Gerente Administrativo',
        'Gerência',
        '1500'
    );

INSERT INTO
    despesa (Codigo, Descritivo)
VALUES (10, 'Comissão de Vendas'),
    (20, 'Fretes Individuais'),
    (30, 'Fretes Empresas'),
    (40, 'Vendas Extra'),
    (50, 'Deslocações'),
    (60, 'Refeições'),
    (70, 'Combustíveis'),
    (80, 'Transportes'),
    (90, 'Telefonemas');

INSERT INTO
    comissao (Valor, Matricula, Codigo)
VALUES (10500.00, 214, 10),
    (3750.00, 214, 10),
    (2600.00, 214, 60),
    (400.00, 214, 70),
    (2500.00, 225, 10),
    (370.00, 225, 30),
    (5500.00, 237, 10),
    (14230.00, 237, 30),
    (20.00, 237, 40),
    (120.00, 237, 50),
    (170.00, 242, 20),
    (2300.00, 249, 20);

-- Fim da tarefa.
-- Para testar: rode SHOW TABLES; ou SELECT * FROM empregado;