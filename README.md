https://github.com/Cobliteam/cassandra-migrate

docker network create external-example

docker run --rm -v $(pwd)/migrate/config.yml:/cassandra-migrate.yml -v $(pwd)/migrations:/migrations --network external-example justdomepaul/cassandra-migrate -H cassandra -p 9042 migrate

docker run --rm -v $(pwd)/migrate/config.yml:/cassandra-migrate.yml -v $(pwd)/migrations:/migrations --network external-example justdomepaul/cassandra-migrate -H cassandra -p 9042 generate first


