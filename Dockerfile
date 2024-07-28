# Use the official Apache Kafka image
FROM apache/kafka:3.8.0

# Copy the custom server.properties file into the container
COPY server.properties /opt/kafka/config/server.properties

# Expose the necessary ports
EXPOSE 9092

# Start Kafka in KRaft mode
CMD ["sh", "-c", "bin/kafka-storage.sh format -t $(uuidgen) -c config/server.properties && bin/kafka-server-start.sh config/server.properties"]
