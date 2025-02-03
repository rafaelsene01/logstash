FROM docker.elastic.co/logstash/logstash:8.11.0

# Copy Logstash configuration
COPY logstash.conf /usr/share/logstash/pipeline/logstash.conf

# Set permissions
USER root
RUN chown logstash:logstash /usr/share/logstash/pipeline/logstash.conf

# Switch back to logstash user
USER logstash
