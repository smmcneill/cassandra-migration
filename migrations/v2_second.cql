/* Cassandra migration for keyspace herbie.
   Version 2 - 2021-11-13T20:26:25.723046+00:00

   second */
use herbie;
CREATE TABLE shannon(
   shannon_id int PRIMARY KEY,
   emp_name text,
   emp_city text,
   emp_sal varint,
   emp_phone varint
   );
