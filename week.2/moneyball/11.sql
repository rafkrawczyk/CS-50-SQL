SELECT "first_name", "last_name", ("salary" / "H") AS "dollars per hit" FROM "performances"
JOIN "players" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id" AND "performances"."year" = "salaries"."year"
WHERE "H" > 0 AND "performances"."year" = 2001
ORDER BY "dollars per hit" ASC, "first_name", "last_name"
LIMIT 10;
