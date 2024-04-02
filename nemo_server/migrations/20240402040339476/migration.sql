BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "food_restaurants" (
    "id" serial PRIMARY KEY,
    "restaurantsName" text NOT NULL,
    "restaurantsImage" text NOT NULL,
    "address" text NOT NULL,
    "addressGeoLat" double precision NOT NULL,
    "addressGeoLong" text NOT NULL,
    "isAccountVerified" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR nemo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nemo', '20240402040339476', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240402040339476', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
