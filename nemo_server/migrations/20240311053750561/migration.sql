BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "notes" (
    "id" serial PRIMARY KEY,
    "text" text NOT NULL
);


--
-- MIGRATION VERSION FOR nemo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nemo', '20240311053750561', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240311053750561', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
