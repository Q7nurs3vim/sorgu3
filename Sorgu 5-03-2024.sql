-- türü 6 ve 9 dışındaki kayıtları getırın.
SELECT *
FROM butce
WHERE tur_id = 6 OR tur_id = 9; 

-- BETWEEN ile yapılacak 2024 yılı içinde yapılan işlemleri getirin.
SELECT * FROM butce
WHERE tarih BETWEEN '2024-01-01' AND '2024-12-31';

-- tur_id si 6,9,15 olan kayıtları getırın 
SELECT * FROM butce 
WHERE tur_id IN ( 6,9,15 );

-- mayıs ayından önce yapılan 250 ile 600 TL arası harcamaları getırın
SELECT * FROM butce 
WHERE tarih < '2024-05-01' AND (miktar BETWEEN 250 AND 600);

-- yapılan işlemleri tür_id sine göre azalan, tur_id si aynı olanların da işlem tarihine göre artan şekilde sıralayınız.
SELECT *
FROM butce
ORDER BY tur_id DESC, tarih ASC;

