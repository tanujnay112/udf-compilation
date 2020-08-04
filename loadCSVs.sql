-- Usage: Use the -f flag to specify a psql file to run
-- For instance, `psql -h localhost -d database -f loadCSVs.sql

DROP TABLE IF EXISTS public.library_link;
CREATE TABLE public.library_link (
    id integer NOT NULL,
    value text NOT NULL
);
\copy public.library_link FROM 'links.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS public.library_tokenrecord;
CREATE TABLE public.library_tokenrecord (
    id integer NOT NULL,
    token text NOT NULL,
    source_id integer NOT NULL,
    index integer NOT NULL
);
\copy public.library_tokenrecord FROM 'tokens.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS public.library_functionrecord;
CREATE TABLE public.library_functionrecord (
    id integer NOT NULL,
    text text NOT NULL,
    source_id integer NOT NULL,
    index integer NOT NULL
);
\copy public.library_functionrecord FROM 'functions.csv' DELIMITER ',' CSV HEADER;
