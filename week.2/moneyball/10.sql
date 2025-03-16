SELECT "first_name", "last_name", "salary", "HR", "performances"."year" AS "year" FROM "performances"
JOIN "salaries" ON "players"."id" = "salaries"."player_id" AND "salaries"."year" = "performances"."year"
JOIN "players" ON "players"."id" = "performances"."player_id"
ORDER BY "players"."id" ASC, "performances"."year" DESC, "HR" DESC, "salary" DESC;
