CREATE TABLE "users" (
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT,
    "password" TEXT NOT NULL,
    PRIMARY KEY ("username")
);

CREATE TABLE "schools" (
    "name" TEXT,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year_founded" INTEGER NOT NULL,
    PRIMARY KEY ("name")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "user_connections" (
    "id" INTEGER,
    "user_1_name" TEXT,
    "user_2_name" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_1_name") REFERENCES "users"("name"),
    FOREIGN KEY ("user_2_name") REFERENCES "users"("name")
);

CREATE TABLE "school_connections" (
    "id" INTEGER,
    "username" TEXT,
    "school_name" TEXT,
    "start_date" DATE NOT NULL,
    "end_date" DATE,
    "degree_type" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("username") REFERENCES "users"("username"),
    FOREIGN KEY ("school_name") REFERENCES "schools"("name")
);

CREATE TABLE "company_connections" (
    "id" INTEGER,
    "username" TEXT,
    "company_id" INTEGER,
    "start_date" DATE NOT NULL,
    "end_date" DATE,
    "title" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("username") REFERENCES "users"("username"),
    FOREIGN KEY ("company_id") REFERENCES "companies"("id")
);
