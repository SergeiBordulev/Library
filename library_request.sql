USE library;

-- SQL-запрос возвращающий самого популярного автора за год. 
/*
SELECT a.authorName AS BestAuthor -- выводим поля authorName из таблицы author с заданым алиасом BestAuthor
FROM ordersTable AS o
INNER JOIN book AS b -- обьединяем ordersTable с таблицей book
 	ON b.id = o.bookId -- задаем связь 
LEFT JOIN author AS a -- обьединяем book с таблицей author
	ON a.id = b.id -- задаем связь 
WHERE dateStart > '2017-01-01' AND dateStart < '2017-12-31' -- задаем условие для отбора (один год)
GROUP BY a.authorName -- задаем группировку по имени автора
ORDER BY BestAuthor DESC LIMIT 1 -- задаем сортировку выходных значений, DESC по убыванию и выбираем одно первое значение
;
*/

/* Пример SQL-запроса для получения разницы между текущей датой (curdate()) и датой когда книгу взяли (dateStart) */
/*SELECT DATEDIFF(curdate(), dateStart)
FROM ordersTable
WHERE id = 1 -- меняем значение исходя из итерации
;*/

/* Пример SQL-запроса для получения разницы между датой когда книгу вернули (dateEnd) и датой когда книгу взяли (dateStart) */
/*SELECT DATEDIFF(dateEnd, dateStart)
FROM ordersTable
WHERE id = 1 -- меняем значение исходя из итерации
;*/

/* Пример SQL-запроса для получения имени должника, зная id записи в ordersTable: */
/*
SELECT s.studentsLastName AS 'Debtor Last Name', s.studentsFirstName AS 'Debtor First Name' -- выводим поля studentsLastName и studentsFirstName из таблицы students с заданым алиасом
FROM ordersTable AS o
INNER JOIN students AS s -- обьединяем ordersTable с таблицей students
 	ON s.id = o.studentId -- задаем связь
WHERE o.id=1 -- указываем требуемое значение id, какой записи требуется получить имя и фамилию студента
;*/
