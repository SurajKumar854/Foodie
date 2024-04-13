BEGIN;


--
-- MIGRATION VERSION FOR nemo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nemo', '20240413074249235', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240413074249235', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
