FROM cassandra:3.0

ADD wait-for-it.sh /wait-for-it.sh

ADD init.cql /init.cql

CMD cassandra -p pidfile; /wait-for-it.sh 127.0.0.1:9042 --timeout=0 -- cqlsh -f /init.cql && kill $(cat pidfile) && cassandra -f
