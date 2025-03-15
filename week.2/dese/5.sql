SELECT "city", COUNT("city") FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city" HAVING (COUNT("city")) BETWEEN 0 AND 3
ORDER BY COUNT("city") DESC, "city" ASC;
