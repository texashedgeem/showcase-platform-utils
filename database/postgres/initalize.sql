CREATE TABLE person
(
    id                    uuid PRIMARY KEY UNIQUE DEFAULT gen_random_uuid (),
    created_at            timestamp DEFAULT now() NOT NULL,
    user_name             varchar(255) NOT NULL UNIQUE,
    bank_account          varchar(255) NOT NULL,
    status                varchar(20)  NOT NULL DEFAULT 'ONLINE' CHECK(status IN ('ONLINE', 'OFFLINE'))
);

CREATE UNIQUE INDEX CONCURRENTLY person_username_unique_index ON person(user_name);