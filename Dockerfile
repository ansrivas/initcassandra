FROM cassandra:3.0

ADD wait-for-it.sh /wait-for-it.sh

ADD init.cql /init.cql

# Fix datetime to CET/CEST
RUN unlink /etc/localtime  && \
    ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime
    
CMD cassandra -p pidfile; /wait-for-it.sh 127.0.0.1:9042 --timeout=0 -- cqlsh -f /init.cql && kill $(cat pidfile) && cassandra -f
