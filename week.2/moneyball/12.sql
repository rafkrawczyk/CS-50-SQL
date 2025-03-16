SELECT "first_name", "last_name" FROM "players" WHERE "id" IN (
    SELECT "performances"."player_id" FROM "performances"
    JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id" AND "performances"."year" = "salaries"."year"
    WHERE "H" > 0 AND "performances"."year" = 2001
    ORDER BY "salary" / "H" ASC LIMIT 10
)

INTERSECT

SELECT "first_name", "last_name" FROM "players" WHERE "id" IN (
    SELECT "performances"."player_id" FROM "performances"
    JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id" AND "performances"."year" = "salaries"."year"
    WHERE "RBI" > 0 AND "performances"."year" = 2001
    ORDER BY "salary" / "RBI" ASC LIMIT 10
)

ORDER BY "last_name" ASC;
