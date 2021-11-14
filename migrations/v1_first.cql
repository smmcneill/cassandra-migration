/* Cassandra migration for keyspace hello.
   Version 1 - 2021-11-13T20:17:59.515909+00:00

   first */
use hello;
CREATE TABLE person(
   id int PRIMARY KEY,
   first_name text,
   last_name text,
   city text
);
