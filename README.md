https://github.com/Cobliteam/cassandra-migrate

docker run --rm -v $(pwd)/migrate/config.yml:/cassandra-migrate.yml -v $(pwd)/migrations:/migrations justdomepaul/cassandra-migrate generate first
