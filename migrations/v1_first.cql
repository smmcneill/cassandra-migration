/* Cassandra migration for keyspace herbie.
   Version 1 - 2021-11-13T20:17:59.515909+00:00

   first */
use herbie;
CREATE TABLE emp(
   emp_id int PRIMARY KEY,
   emp_name text,
   emp_city text,
   emp_sal varint,
   emp_phone varint
   );
