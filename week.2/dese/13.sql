SELECT "name", "type", "pupils" FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
WHERE "pupils" > (
    SELECT AVG("pupils")
    FROM "expenditures"
)
ORDER BY "state" ASC;
