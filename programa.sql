-- muda o nome do Toreto para Goofy;
UPDATE Animais
SET nome = 'Goofy'
WHERE nome = 'Toreto';

-- muda o peso do Gato de botas para 10 kilogramas;
UPDATE Animais
SET peso = 10.00
WHERE nome = 'Gato de botas';

-- muda a cor de todos os gatos para laranja;
UPDATE Animais
SET cor = 'laranja'
WHERE cor = 'gato';

-- cria um campo altura para os animais;
ALTER TABLE Animais
ADD altura decimal(10,2);

-- cria um campo observação para os animais;
ALTER TABLE Animais
ADD observacao varchar(255);

-- remove todos os animais que pesam mais que 200 kilogramas.
DELETE FROM Animais
WHERE peso > 200;

-- remove todos os animais que o nome inicie com a letra ‘C’.
DELETE FROM Animais
WHERE nome LIKE 'C%';

-- remove o campo de cor dos animais;
ALTER TABLE Animais
DROP COLUMN cor;

-- aumento do tamanho do campo nome dos animais para 80 caracteres;
ALTER TABLE Animais
MODIFY nome varchar(80);

-- remove todos os gatos e cachorros.
DELETE FROM Animais
WHERE nome IN ('Gato de botas', 'Toreto');

-- remove o campo data de nascimento dos animais;
ALTER TABLE Animais
DROP COLUMN nasc;

-- remove todos os animais;
DELETE FROM Animais;

-- remove a tabela especies;
DROP TABLE especies;