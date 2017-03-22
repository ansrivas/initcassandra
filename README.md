# initcassandra
A super hacky way to initialize keyspaces and tables in cassandra using docker-compose.

### This is just meant to run ad-hoc tests for cassandra using docker-containers.

### Background:
1. Needed a cassandra docker container to run tests with automatic migrations.
2. Currently cassandra doesn't support anything like that.

### Usage:
Create your keyspaces/tables etc. inside `init.cql` and hit `docker-compose up --build`
