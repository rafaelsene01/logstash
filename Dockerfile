FROM docker.elastic.co/logstash/logstash:8.11.0

RUN mkdir config
RUN mkdir pipeline