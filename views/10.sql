SELECT "english_title" AS 'Title', "entropy" AS 'Entropy' FROM "views"
WHERE "entropy" > 7.5
ORDER BY (entropy) DESC;
