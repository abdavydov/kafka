FROM java:openjdk-8-jre

ENV KAFKA_HOME /opt/kafka_2.11-1.0.0

ADD kafka_start.sh /usr/bin/kafka_start.sh

RUN wget -q http://www-eu.apache.org/dist/kafka/1.0.0/kafka_2.11-1.0.0.tgz -O /tmp/kafka_2.11-1.0.0.tgz && \
tar -xf /tmp/kafka_2.11-1.0.0.tgz -C /opt && \
rm /tmp/kafka_2.11-1.0.0.tgz

RUN chmod +x /usr/bin/kafka_start.sh

EXPOSE 2181 9092

CMD ["kafka_start.sh"]
