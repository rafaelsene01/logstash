# Use the official Logstash image as the base
FROM docker.elastic.co/logstash/logstash:8.6.0

# Copy the custom Logstash pipeline configuration into the container
COPY ./config/logstash.yml /usr/share/logstash/config/logstash.yml
COPY ./pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf

# Set the default command to run Logstash with the custom pipeline
CMD ["logstash", "-f", "/usr/share/logstash/pipeline/logstash.conf"]