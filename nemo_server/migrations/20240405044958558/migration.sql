BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "food_restaurants" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "food_restaurants" (
    "id" serial PRIMARY KEY,
    "restaurantsName" text NOT NULL,
    "restaurantsImage" text NOT NULL,
    "address" text NOT NULL,
    "email" text NOT NULL,
    "countryCode" text NOT NULL,
    "mobileNo" text NOT NULL,
    "password" text NOT NULL,
    "addressgeolat" double precision NOT NULL,
    "addressgeolong" double precision NOT NULL,
    "isAccountVerified" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR nemo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nemo', '20240405044958558', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240405044958558', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
