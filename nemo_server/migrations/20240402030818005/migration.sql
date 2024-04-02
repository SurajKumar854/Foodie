BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "foodie_admin" (
    "id" serial PRIMARY KEY,
    "firstName" text NOT NULL,
    "lastName" text NOT NULL,
    "email" text NOT NULL,
    "countryCode" text NOT NULL,
    "mobileNo" text NOT NULL,
    "password" text NOT NULL,
    "country" text NOT NULL,
    "isAccountVerified" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR nemo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nemo', '20240402030818005', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240402030818005', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
