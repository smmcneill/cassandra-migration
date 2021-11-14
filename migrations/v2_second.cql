/* Cassandra migration for keyspace hello.
   Version 2 - 2021-11-13T20:26:25.723046+00:00

   second */
use hello;
CREATE TABLE work_history(
   id int PRIMARY KEY,
   person_id int,
   business_name text
);