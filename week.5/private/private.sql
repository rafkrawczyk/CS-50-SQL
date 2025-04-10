DROP TABLE IF EXISTS "triplets";

CREATE TABLE "triplets" (
    "id" INTEGER,
    "sentence_number" INTEGER,
    "character_number" INTEGER,
    "message_length" INTEGER,
    PRIMARY KEY("id")
);

INSERT INTO "triplets" ("id", "sentence_number", "character_number", "message_length")
VALUES
    (1, 14, 98, 4),
    (2, 114, 3, 5),
    (3, 618, 72, 9),
    (4, 630, 7, 3),
    (5, 932, 12, 5),
    (6, 2230, 50, 7),
    (7, 2346, 44, 10),
    (8, 3041, 14, 5)
;

CREATE VIEW "message" AS
SELECT substr ("sentence", "character_number", "message_length") AS "phrase" FROM "triplets"
JOIN "sentences" ON "sentences"."id" = "triplets"."sentence_number";
