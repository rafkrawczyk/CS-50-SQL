CREATE TABLE "ingredients" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price_per_unit" NUMERIC NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "gluten_free" TEXT NOT NULL,
    "price" NUMERIC NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "donut_contains" (
    "ingredient_id" INTEGER,
    "donut_id" INTEGER,
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "customer_id" INTEGER,
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "order_contains" (
    "order_id" INTEGER,
    "donut_id" INTEGER,
    FOREIGN KEY ("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts"("id")
)
