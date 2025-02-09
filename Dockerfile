FROM docker.elastic.co/logstash/logstash:8.10.2

# Instala o plugin do MongoDB
RUN bin/logstash-plugin install logstash-output-mongodb

# Copia o arquivo de configuração para dentro do container
COPY pipeline /usr/share/logstash/pipeline/